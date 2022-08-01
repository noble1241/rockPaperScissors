package noDeal;

import java.util.ArrayList;
import java.util.Iterator;

import org.bson.Document;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class conne{
	public static int getStock(int n) {
		Iterator it = con();
		ArrayList<Document> list = new ArrayList<Document>();
		while(it.hasNext()) {
			list.add((Document) it.next());
		}
		var info = new ArrayList<>(list.get(n).values());
		return (int) info.get(3);
	}
	public static int getPrice(int n) {
		Iterator it = con();
		ArrayList<Document> list = new ArrayList<Document>();
		while(it.hasNext()) {
			list.add((Document) it.next());
		}
		var info = new ArrayList<>(list.get(n).values());
		return (int) info.get(2);
	}
	public static int getRating(int n) {
		Iterator it = con();
		ArrayList<Document> list = new ArrayList<Document>();
		while(it.hasNext()) {
			list.add((Document) it.next());
		}
		var info = new ArrayList<>(list.get(n).values());
		return (int) info.get(4);
	}
	public static int size() {
		Iterator it = con();
		ArrayList<Document> list = new ArrayList<Document>();
		while(it.hasNext()) {
			list.add((Document) it.next());
		}
		return list.size();
	}
	public static int getNum(int n) {
		MongoClient mongoClient = new MongoClient("localhost" , 27017 );
		MongoDatabase database = mongoClient.getDatabase("storeInv");
		MongoCollection<Document> collection = database.getCollection("cart");
		FindIterable<Document> result = collection.find();
		Iterator it = result.iterator();
		ArrayList<Document> list = new ArrayList<Document>();
		while(it.hasNext()) {
			list.add((Document) it.next());
		}
		var info = new ArrayList<>(list.get(n-1).values());
		return (int) info.get(3);
	}
	public static Iterator con() {
		MongoClient mongoClient = new MongoClient(new MongoClientURI("mongodb://localhost:27017/"));
		MongoDatabase database = mongoClient.getDatabase("storeInv");
		MongoCollection<Document> collection = database.getCollection("Inv");
		FindIterable<Document> result = collection.find();
		Iterator it = result.iterator();
		return it;
	}
}