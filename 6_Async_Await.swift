//Todo:Asynchronous Functions
//We have 2 api GET requests:
//https://randomuser.me/api/
//https://api.zippopotam.us/us/33162

let urlGetRandomUser = URL(string: "https://randomuser.me/api")
let urlGetDetailCountry = URL(string: "https://api.zippopotam.us/us/33162")

print("begin task 1")
URLSession.shared.dataTask(with: urlGetRandomUser!) {(data, response, error) in
    print("finished get task 1")
}.resume()

print("begin task 2")
URLSession.shared.dataTask(with: urlGetDetailCountry!) {(data, response, error) in
    print("finished get task 2")
}.resume()
//task1 and task2 are async tasks


//now we want task1 run, finish, then start task2, how to do this
func do2Tasks() async {
    do {
        print("begin task 1")
        let (data1, response1) = try await URLSession.shared.data(from: urlGetRandomUser!)
        print("finished task 1")
        print("begin task 2")
        let (data2, response2) = try await URLSession.shared.data(from: urlGetDetailCountry!)
        print("finished task 2")
    }catch {
        
    }
}

import _Concurrency
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
Task.init {
    await do2Tasks()
}
