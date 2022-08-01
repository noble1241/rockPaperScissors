package noDeal;
import java.util.Iterator;

import org.bson.Document;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

public class addCart {
	static conne con = new conne();
	public static void printAllDocuments(MongoCollection collection) {
		MongoCursor<Document> cursor = collection.find().cursor();
		while (cursor.hasNext()) {
			System.out.println(cursor.next());
		}
	}
	public static void removeAllDocuments(MongoCollection collection) {
		collection.deleteMany(new BasicDBObject());
	}
	public static int getTotal() {
		int total = 0;
		int egg = conne.getPrice(0)* conne.getNum(1);
		int apple = conne.getPrice(1)* conne.getNum(2);
		int potato = conne.getPrice(2)* conne.getNum(3);
		int rice = conne.getPrice(3)* conne.getNum(4);
		int carrot = conne.getPrice(4)* conne.getNum(5);
		total = egg+apple+potato+rice+carrot;
		return total;
	}
	public static int getBought(int n) {
		return conne.getPrice(n-1)*conne.getNum(n);
	}
	public static int totalItems() {
		int total = 0;
		for(int i = 1; i<conne.size(); i++) {
			total = conne.getNum(i);
		}
		return total;
	}
	public static void insertStock(MongoCollection collection) {
		Document document = new Document();
		document.append("name", "Eggs");
		document.append("price", 7);
		document.append("quantity", 5);
		document.append("rating", 4);

		Document document2 = new Document();
		document2.append("name", "Apples");
		document2.append("price", 7);
		document2.append("quantity", 6);
		document2.append("rating", 3.5);

		Document document3 = new Document();
		document3.append("name", "Sweet Potatoes");
		document3.append("price", 6);
		document3.append("quantity", 2);
		document3.append("rating", 5);

		Document document4 = new Document();
		document4.append("name", "Brown Rice");
		document4.append("price", 9);
		document4.append("quantity", 9);
		document4.append("rating", 3.5);

		Document document5 = new Document();
		document5.append("name", "Carrots");
		document5.append("price", 12);
		document5.append("quantity", 4);
		document5.append("rating", 3);

		collection.insertOne(document);
		collection.insertOne(document2);
		collection.insertOne(document3);
		collection.insertOne(document4);
		collection.insertOne(document5);
	}
	public static void insertCart(MongoCollection collection) {
		Document document = new Document();
		document.append("name", "Eggs");
		document.append("price", 7);
		document.append("num", 0);

		Document document2 = new Document();
		document2.append("name", "Apples");
		document2.append("price", 7);
		document2.append("num", 0);

		Document document3 = new Document();
		document3.append("name", "Sweet Potatoes");
		document3.append("price", 6);
		document3.append("num", 0);

		Document document4 = new Document();
		document4.append("name", "Brown Rice");
		document4.append("price", 9);
		document4.append("num", 0);

		Document document5 = new Document();
		document5.append("name", "Carrots");
		document5.append("price", 12);
		document5.append("num", 0);


		collection.insertOne(document);
		collection.insertOne(document2);
		collection.insertOne(document3);
		collection.insertOne(document4);
		collection.insertOne(document5);
	}
	public static void add(MongoCollection col, String str) {
		BasicDBObject newDocument = new BasicDBObject().append("$inc",new BasicDBObject().append("num", 1));
		col.updateOne(new BasicDBObject().append("name", str), newDocument);
	}
	public static void remove(MongoCollection col, String str) {
		BasicDBObject newDocument = new BasicDBObject().append("$inc",new BasicDBObject().append("num", -1));
		col.updateOne(new BasicDBObject().append("name", str), newDocument);
	}
	public static void reset() {
		MongoClient mongoClient = new MongoClient("localhost" , 27017 );
		MongoDatabase database = mongoClient.getDatabase("storeInv");
		MongoCollection<Document> collection = database.getCollection("cart");
		MongoCollection<Document> col = database.getCollection("Inv");
		removeAllDocuments(collection);
		removeAllDocuments(col);
		insertStock(col);
		insertCart(collection);
	}

}
