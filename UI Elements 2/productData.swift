//
//  productData.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 18/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import Foundation
// Apple Devices

var arrAppleProducts = [
    iphones,
    macBooks,
    watches,
    ipads,
    airPods,
    tv
]

var iphones = AppleProduct(category: "IPhones",
                           devices: [iphone13,
                                     iphone12Pro,
                                     iphone12,
                                     iphone11])

var macBooks = AppleProduct(category: "MacBooks",
                            devices: [macBook1,
                                      macBook2,
                                      macBook3,
                                      macBook4,
                                      macBook5])

var watches = AppleProduct(category: "Apple Watches",
                           devices: [watch3,
                                     watchSE,
                                     watch6,
                                     watch7])

var ipads = AppleProduct(category: "IPads",
                         devices: [ipad1,
                                   ipad2,
                                   ipad3])

var airPods = AppleProduct(category: "AirPods",
                           devices: [airPod1,
                                     airPod2,
                                     airPod3,
                                     airPod4])

var tv = AppleProduct(category: "Apple TV",
                      devices: [tv1,
                                tv2])

// MacBooks
var macBook1 = Device(title: "MacBook Air 2020",
                      image: ["MacBook Air 2020", "MacBook Air 2020 2", "MacBook Air 2020 3", "MacBook Air 2020 4", "MacBook Air 2020 5"],
                      description: "Apple MacBook Air 2020 is a macOS laptop with a 13.30-inch display that has a resolution of 2560x1600 pixels. It is powered by a Core i3 processor and it comes with 8GB of RAM. The Apple MacBook Air 2020 packs 256GB of SSD storage. Graphics are powered by Integrated Graphics Processor.")

var macBook2 = Device(title: "MacBook Air 2022",
                      image: ["MacBook Air 2022", "MacBook Air 2022", "MacBook Air 2022 3", "MacBook Air 2022 4", "MacBook Air 2022 5"],
                      description: "The 2022 MacBook Air looks entirely different from the prior-generation version, featuring an updated chassis that does away with the tapered design that the MacBook Air used for so long. Instead, the MacBook Air adopts a uniform, flat body similar to the MacBook Pro.")

var macBook3 = Device( title: "MacBook Pro 2020",
                       image: ["MacBook Pro 2020", "MacBook Pro 2020 2", "MacBook Pro 2020 3", "MacBook Pro 2020 4", "MacBook Pro 2020 5"],
                       description: "Apple MacBook Pro 13-inch 2020 is a macOS laptop with a 13.30-inch display that has a resolution of 1600x2560 pixels. It is powered by a Core i5 processor and it comes with 8GB of RAM. The Apple MacBook Pro 13-inch 2020 packs 256GB of SSD storage. Graphics are powered by Intel Integrated Iris Plus Graphics 645.")

var macBook4 = Device(title: "MacBook Pro 2021",
                      image: ["MacBook Pro 2021", "MacBook Pro 2021 2", "MacBook Pro 2021 3", "MacBook Pro 2021 4", "MacBook Pro 2021 5"],
                      description: "The MacBook Pro 14-inch (2021) is the best laptop for creative professionals you can buy right now. It offers amazing performance, even on battery, and comes with the best screen you'll find on a laptop anywhere.")

var macBook5 = Device(title: "MacBook Pro 2022",
                      image: ["MacBook Pro 2022", "MacBook Pro 2022 2", "MacBook Pro 2022 3", "MacBook Pro 2022 4", "MacBook Pro 2022 5"],
                      description: "the new 13-inch MacBook Pro works just fine. Its performance is great and battery life is reliable; the Butterfly keys that caused so many problems are long gone. It's the only MacBook in the entire lineup that keeps the Touch Bar (er, if you like that). But for $1,299, I think it's fair to expect more from Apple.")

// Iphone Devices

var iphone13 = Device(title: "IPhone 13",
                      image: ["IP 13","IP 13 2","IP 13 3","IP 13 4","IP 13 5"],
                      description: "The iPhone 13 and iPhone 13 mini iterate upon the successful iPhone 12 with new cameras and longer battery life. The notch has been reduced in size, and the rear camera module now sits at a diagonal. In addition, the A15 processor brings more speed and efficiency to every task.")

var iphone12Pro = Device(title: "IPhone 12 Pro",
                         image: ["IP 12 Pro","IP 12 Pro 2","IP 12 Pro 3", "IP 12 Pro 4", "IP 12 Pro 5",],
                         description: "Beyond adding 5G, Apple has equipped the iPhone 12 family with its powerful new A14 Bionic processor, a Super Retina XDR display, a more durable Ceramic Shield front cover, and a MagSafe feature for more reliable wireless charging, and support for attachable accessories.")

var iphone12 = Device(title: "IPhone 12",
                      image: ["IP 12","IP 12 2","IP 12 3", "IP 12 4", "IP 12 5",],
                      description: "Beyond adding 5G, Apple has equipped the iPhone 12 family with its powerful new A14 Bionic processor, a Super Retina XDR display, a more durable Ceramic Shield front cover, and a MagSafe feature for more reliable wireless charging, and support for attachable accessories.")

var iphone11 = Device(title: "IPhone 11",
                      image: ["IP 11", "IP 11 2","IP 11 3","IP 11 4","IP 11 5",],
                      description: "The iPhone 11 succeeded the iPhone XR, and it features a 6.1-inch LCD display that Apple calls a 'Liquid Retina HD Display.' It features a 1792 x 828 resolution at 326ppi, a 1400:1 contrast ratio, 625 nits max brightness, True Tone support for adjusting the white balance to the ambient lighting, and wide color support")

// Apple Watches

var watch3 = Device(
    title: "IWatch 3",
    image: ["I Watch 3","I Watch 3 2","I Watch 3 3","I Watch 3 4","I Watch 3 5",],
    description: "With the technology, Apple Watch Series 3 models can send and receive phone calls, text messages, and email without needing to have an iPhone nearby. Thanks to the S3 dual-core processor, Series 3 watches accelerate device performance up to 70%. Wi-Fi connectivity improves, too, thanks to Apple's custom W2 chip.")

var watchSE = Device(
    title: "IWatch SE",
    image: ["I Watch SE","I Watch SE 2","I Watch SE 3", "I Watch SE 4", "I Watch SE 5",],
    description: "The smartwatch is powered by the Apple S5 Dual-core processor and PowerVR GPU. The tablet comes with a 1.78 inches Retina LTPO OLED capacitive touchscreen and 448 x 368 pixels resolution. While the screen of the device is protected by Ion-X strengthened glass, it also has 3D Touch display + 1000 nits max brightness (advertised). The dimension of the watch is 44 x 38 x 10.4 mm and it weighs 36.4 grams only. It is built with a Glass front, ceramic/sapphire crystal back, and an aluminum frame. There is an eSIM facility available with 50m water-resistant.")

var watch6 = Device(
    title: "IWatch 6",
    image: ["I Watch 6", "I Watch 6 2", "I Watch 6 3", "I Watch 6 4", "I Watch 6 5",],
    description: "As an overall fitness tracker, the Apple Watch 6 feels like it's got some incredible benefits – great activity tracking, good monitoring and motivation to stay active, a wide range of monitored activities – but there's still no step up to a 'pro mode' for those who want to take their fitness to another level.")

var watch7 = Device(
    title: "IWatch 7",
    image: ["I Watch 7", "I Watch 7 2", "I Watch 7 3", "I Watch 7 4", "I Watch 7 5",],
    description: "Safety features like fall detection,13 Emergency SOS, and high and low heart rate notifications make Apple Watch great for older family members, even if they don't own an iPhone. Calling, texting, and location sharing provide an easy way to stay connected with the family.")

// Apple Ipads

var ipad1 = Device(
    title: "IPad 2021",
    image: ["Ipad 2021","Ipad 2021 2","Ipad 2021 3","Ipad 2021 4","Ipad 2021 5",],
    description: "The 2021 iPad Pro features a camera system with two lenses and a LiDAR Scanner. With a 12MP wide camera with ƒ/1.8 aperture and a 10MP ultra-wide camera with ƒ/2.4 aperture and 125° field of view, it's possible to record 4K video at 24 fps, 25 fps, 30 fps, or 60 fps.")

var ipad2 = Device(
    title: "IPad Air 2022",
    image: ["Ipad Air 2022","Ipad Air 2022 2","Ipad Air 2022 3","Ipad Air 2022 4","Ipad Air 2022 5"],
    description: "There is no doubt that the iPad Air (2022) is leagues ahead of other mid-range tablets when it comes to performance. On paper, Apple claims that the M1 chip ensures up to 60 percent faster performance, and the 8-core GPU delivers up to 2x faster graphics performance compared to the previous iPad Air.")

var ipad3 = Device(
    title: "IPad Pro 2021",
    image: ["Ipad Pro 2021", "Ipad Pro 2021 2", "Ipad Pro 2021 3", "Ipad Pro 2021 4", "Ipad Pro 2021 5"],
    description: "The iPad Pro 2021 reflects the changing world, as its front-facing 12MP TrueDepth camera is crisp enough for the video conferencing era — and its Center Stage feature will help make meetings more fluid, keeping your face on camera as you move.")

// Apple AirPods

var airPod1 = Device(
    title: "AirPods 1",
    image: ["AirPods 1", "AirPods 1 2", "AirPods 1 3", "AirPods 1 4", "AirPods 1 5",],
    description: "Image result for AirPods 1 description The original AirPods, on the other hand, use the W1 chip. The new H1 chip provides faster connectivity, lower latency, Siri support, faster switching between devices and more.")

var airPod2 = Device(
    title: "AirPods 3rd Gen",
    image: ["AirPods 3rd Gen", "AirPods 3rd Gen 2", "AirPods 3rd Gen 3", "AirPods 3rd Gen 4", "AirPods 3rd Gen 5",],
    description: "Heighten your musical experience with high-quality sound with these Apple AirPods (3rd generation). Its Adaptive EQ tunes music automatically to your ear for rich sound that is unputdownable. It has spatial audio along with dynamic head tracking for a three-dimensional, immersive listening experience. It comes with a portable MagSafe charging case that provides a total of 30 hours of unrestrained musical enjoyment.")

var airPod3 = Device(
    title: "AirPods Max",
    image: ["AirPods Max", "AirPods Max 2", "AirPods Max 3", "AirPods Max 4", "AirPods Max 5",],
    description: "AirPods Max combine high-fidelity audio with industry-leading Active Noise Cancellation to deliver an unparalleled listening experience. Each part of their custom-built driver works to produce sound with ultra-low distortion across the audible range.")

var airPod4 = Device(
    title: "AirPods Pro",
    image: ["AirPods Pro", "AirPods Pro 2", "AirPods Pro 3", "AirPods Pro 4", "AirPods Pro 5",],
    description: "AirPods Pro are the only. in-ear headphones with. Active Noise Cancellation that continuously adapts to the geometry of your ear and the fit of the ear tips — blocking out the world so you can focus on what you're listening to. An outward-facing microphone detects external sound.")

// Apple TV

var tv1 = Device(
    title: "Apple TV 1",
    image: ["Apple TV 1", "Apple TV 1 2", "Apple TV 1 3", "Apple TV 1 4", "Apple TV 1 5"],
    description: "The only super major differences the 1st Gen Apple TV's has from the new ones is the ability to store Movies, Music, Content, etc because they have a physical hard drive in them for doing those things. The other things is that they can connect to TV's through Red, Blue, Green Component Cables.")

var tv2 = Device(
    title: "Apple TV 2",
    image: ["Apple TV 2", "Apple TV 2 2", "Apple TV 2 3", "Apple TV 2 4", "Apple TV 2 5"],
    description: "It is housed in a black enclosure and is one-quarter the size of the first generation model. The device has 8GB of flash storage for buffering, replacing the internal hard drive in the first generation model. It supports output up to 720p via HDMI and does not support standard definition televisions.")



// OLD CODE

//var appleProducts = [
//appleProduct(category: "Iphones",
//             images: ["IP 13","IP 12","IP 12 Pro","IP 11"],
//             names: ["IPhone 13","IPhone 12 Pro","IPhone 12","IPhone 11"]),
//appleProduct(category: "Apple Watches",
//             images: ["I Watch 6","I Watch SE","I Watch 3","I Watch 7"],
//             names: ["I Watch 6","I Watch SE","I Watch 3","I Watch 7"]),
//appleProduct(category: "MacBooks",
//             images: ["MacBook Air 2020","MacBook Air 2022","MacBook Pro 2020","MacBook Pro 2021","MacBook Pro 2022"],
//             names: ["MacBook Air 2020","MacBook Air 2022","MacBook Pro 2020","MacBook Pro 2021","MacBook Pro 2022"]),
//appleProduct(category: "IPads",
//             images: ["Ipad 2021","Ipad Air 2022","Ipad Pro 2021"],
//             names: ["Ipad 2021","Ipad Air 2022","Ipad Pro 2021"]),
//appleProduct(category: "AirPods",
//             images: ["AirPods 1","AirPods 3rd Gen","AirPods Max","AirPods Pro"],
//             names: ["AirPods 1","AirPods 3rd Gen","AirPods Max","AirPods Pro"]),
//appleProduct(category: "Apple TV",
//             images: ["Apple TV 1","Apple TV 2"],
//             names: ["Apple TV 1","Apple TV 2"]),
//]
