//
//  ContentView.swift
//  TeamNDaMx
//
//  Created by Andrea Reed on 3/30/23.
//

import SwiftUI

import SwiftUI
import AVFoundation
import AVFAudio
import AVKit
//declared my player
var player: AVAudioPlayer!


struct ContentView: View {
	let artistSongs = ["BeyHalo", "BrownThisMustBe", "LWayneCeilings", "MetricFormen", "TCureHeaven"
	]
	
	func playSound() {
		let url = Bundle.main.url(forResource: "BirdieTalking", withExtension: "wav")
		guard url != nil else {
			return
		}
		do {
			player = try AVAudioPlayer(contentsOf: url!)
			player?.play()
		} catch {
			print("\(error)")
		}
	}

	var body: some View {
		
		
			
			ScrollView {
				ZStack{
					Image("PlistBkgrd")
						.resizable()
						.frame(maxWidth: 1600, maxHeight: 1050)

					VStack{
						
						HStack{
							
							Image("home")
								.resizable()
								.frame(maxWidth: 30, maxHeight: 30)
								.padding(.leading)
							Spacer()
							Image("share")
								.resizable()
								.frame(maxWidth: 60, maxHeight: 40)
								.padding(.trailing)
						}
						
						VStack{
							Image("theCureLrgPlistCard")
								.resizable()
								.frame(maxWidth: 300, maxHeight: 350)
								.padding(.top, 50)
						}
					
						
						VStack{
							
								ForEach(artistSongs, id:\.self) { artistItem in
									
									LazyVStack{
										ZStack{
											
											Image(artistItem)
												.renderingMode(.original)
												.resizable()
												.padding(.horizontal, 0.0)
												
												.frame(maxWidth:
												.infinity,maxHeight: 90)
//
											
											Button {
												self.playSound()
												
											} label: {
												
												Image("playBttn")
													.resizable()
													.frame(maxWidth: 25, maxHeight: 25)
													.padding(.leading, 300.0)
													
												
													
											}
												
																						}
									
										
									}
									
									
										
										
									
								}
							
						}
						.padding()
						
						Spacer()
						
					
				}
					.padding(.top, 50)
					ZStack {
						Image("")
						HStack{
							
						}
					}
					
				}
//
			}
			.ignoresSafeArea()
	}
}







//					List {
//						Section{
//							ForEach(data, id: \.self) { word in
//								Text(word)
//							}
//							.onDelete { data.remove(atOffsets: $0) }
//							.onMove { data.move(fromOffsets: $0, toOffset: $1) }
//							.swipeActions(edge: .trailing, allowsFullSwipe: true){
//								Button(){
//									//
//								} label: {
//									Label("Delete", systemImage: "questionmark.circle")
//								}.tint(.red)
//							}
//							.swipeActions(edge: .leading, allowsFullSwipe: true) {
//								Button(){
//									//
//								} label: {
//									Label("Another Button", systemImage: "info.circle")
//								}.tint(.init("NDMXPurple"))
//
//								Button() {
//									//
//								} label: {
//									Label("Swipe Button", systemImage: "arrow.forward")
//								}.tint(.init("Turqouis"))
//							}
//						} header: {
//							Text("Playlist")
//								.frame(height: 100)
//
//						}
//
//						footer: {
//							Text("Section Footer - Swipe on a row to see swipe actions")
//						}
//					}
//					.listStyle(.sidebar)
//					.toolbar(){
//						ToolbarItem( placement: .navigationBarTrailing){
//							EditButton()
//						}
//					}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
