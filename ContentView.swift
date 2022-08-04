//
//  ContentView.swift
//  IosTeam
//
//  Created by D.Yasiru Jayatissa on 2022-08-04.
//

import SwiftUI

struct ContentView: View {
    var iosDevelopers: [Team] = []
    var body: some View {
            NavigationView{
                ScrollView(.vertical, showsIndicators: true, content: {
                    List(iosDevelopers) { developer in
                    HStack{
                        Image(developer.image)
                        .resizable()
                        .frame(width: 100, height: 100)
                    VStack(alignment: .leading){
                        Text(developer.name)
                            .font(.body)
                            .baselineOffset(10)
                        Text(developer.email)
                            .font(.caption)
                            .foregroundColor(Color.blue)
                            .underline()
                        }
                    }
                    }.frame(width: 400, height: 1500, alignment: .leading)
                }).navigationTitle("Team iOS 🍎")
            }
    }
}

var iosTeam = [
    Team(id: 1, name: "Mahesh De Silva", email: "mahesh.desilva@circles.asia", image: "mahesh"),
    Team(id: 2, name: "Infaz Ariff", email: "ariff.infaz@circles.asia", image: "infaz"),
    Team(id: 3, name: "Vijay Godse", email: "vijay.godse@circles.asia", image: "vijay"),
    Team(id: 4, name: "Pranav Sah", email: "mahesh.desilva@circles.asia", image: "pranav"),
    Team(id: 5, name: "Nagmanikantha Narne", email: "nagmanikantha.narne@circles.asia", image: "naga"),
    Team(id: 6, name: "Muhammad Irfan Awan", email: "con_irfan.awan@circles.asia", image: "irfan"),
    Team(id: 7, name: "Anu Mittal", email: "anu@circles.asia", image: "anu"),
    Team(id: 8, name: "Pubudu De Silva", email: "pubudu.mihiranga@circles.asia", image: "pubudu"),
    Team(id: 9, name: "Pratik Thakare", email: "pratik.thakare@circles.asia", image: "pratik"),
    Team(id: 10, name: "Krishan", email: "krishantha.sunil@circles.asia", image: "krishan"),
    Team(id: 11, name: "Ray Liem", email: "raymond.liem@circles.asia", image: "ray"),
    Team(id: 12, name: "Chandan Singh", email: "con_chandan.singh@circles.asia", image: "chandan"),
    Team(id: 13, name: "Visal Rajapakse ", email: "visal.rajapakse@circles.asia", image: "visal"),
    Team(id: 14, name: "Yasiru Jayatissa", email: "dyasiru.jayatissa@circles.asia", image: "yasiru"),
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(iosDevelopers : iosTeam)
            ContentView(iosDevelopers : iosTeam)
        }
    }
}
