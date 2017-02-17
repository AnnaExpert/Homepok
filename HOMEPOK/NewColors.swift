//
//  NewColors.swift
//  HOMEPOK - Catalog of Ukrainian vehicle plates
//
//  Created by Alexander Iashchuk on 2/12/17.
//  Copyright © 2015 Alexander Iashchuk (iAlexander), https://iashchuk.com
//
//  This application is released under the MIT license. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(hex: String) {
        var red:   CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue:  CGFloat = 0.0
        var alpha: CGFloat = 1.0
        
        if hex.hasPrefix("#") {
            let index   = hex.index(hex.startIndex, offsetBy: 1)
            let hex     = hex.substring(from: index)
            let scanner = Scanner(string: hex)
            var hexValue: CUnsignedLongLong = 0
            if scanner.scanHexInt64(&hexValue) {
                switch (hex.characters.count) {
                case 3:
                    red   = CGFloat((hexValue & 0xF00) >> 8)       / 15.0
                    green = CGFloat((hexValue & 0x0F0) >> 4)       / 15.0
                    blue  = CGFloat(hexValue & 0x00F)              / 15.0
                case 4:
                    red   = CGFloat((hexValue & 0xF000) >> 12)     / 15.0
                    green = CGFloat((hexValue & 0x0F00) >> 8)      / 15.0
                    blue  = CGFloat((hexValue & 0x00F0) >> 4)      / 15.0
                    alpha = CGFloat(hexValue & 0x000F)             / 15.0
                case 6:
                    red   = CGFloat((hexValue & 0xFF0000) >> 16)   / 255.0
                    green = CGFloat((hexValue & 0x00FF00) >> 8)    / 255.0
                    blue  = CGFloat(hexValue & 0x0000FF)           / 255.0
                case 8:
                    red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                    green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                    blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                    alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
                default:
                    print("Invalid RGB string, number of characters after # should be either 3, 4, 6 or 8")
                }
            } else {
                print("Scan hex error")
            }
        } else {
            print("Invalid RGB string, missing # as prefix")
        }
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
}


public extension UIColor {
    static let absoluteZero = UIColor(hex: "#0048BA")
    static let acidGreen = UIColor(hex: "#B0BF1A")
    static let aero = UIColor(hex: "#7CB9E8")
    static let aeroBlue = UIColor(hex: "#C9FFE5")
    static let africanViolet = UIColor(hex: "#B284BE")
    static let airForceBlueRAF = UIColor(hex: "#5D8AA8")
    static let airForceBlueUSAF = UIColor(hex: "#00308F")
    static let airSuperiorityBlue = UIColor(hex: "#72A0C1")
    static let alabamaCrimson = UIColor(hex: "#AF002A")
    static let alabaster = UIColor(hex: "#F2F0E6")
    static let aliceBlue = UIColor(hex: "#F0F8FF")
    static let alienArmpit = UIColor(hex: "#84DE02")
    static let alizarinCrimson = UIColor(hex: "#E32636")
    static let alloyOrange = UIColor(hex: "#C46210")
    static let almond = UIColor(hex: "#EFDECD")
    static let amaranth = UIColor(hex: "#E52B50")
    static let amaranthDeepPurple = UIColor(hex: "#9F2B68")
    static let amaranthPink = UIColor(hex: "#F19CBB")
    static let amaranthPurple = UIColor(hex: "#AB274F")
    static let amaranthRed = UIColor(hex: "#D3212D")
    static let amazon = UIColor(hex: "#3B7A57")
    static let amazonite = UIColor(hex: "#00C4B0")
    static let amber = UIColor(hex: "#FFBF00")
    static let amberSAEECE = UIColor(hex: "#FF7E00")
    static let americanRose = UIColor(hex: "#FF033E")
    static let amethyst = UIColor(hex: "#9966CC")
    static let androidGreen = UIColor(hex: "#A4C639")
    static let antiFlashWhite = UIColor(hex: "#F2F3F4")
    static let antiqueBrass = UIColor(hex: "#CD9575")
    static let antiqueBronze = UIColor(hex: "#665D1E")
    static let antiqueFuchsia = UIColor(hex: "#915C83")
    static let antiqueRuby = UIColor(hex: "#841B2D")
    static let antiqueWhite = UIColor(hex: "#FAEBD7")
    static let aoEnglish = UIColor(hex: "#008000")
    static let appleGreen = UIColor(hex: "#8DB600")
    static let apricot = UIColor(hex: "#FBCEB1")
    static let aqua = UIColor(hex: "#00FFFF")
    static let aquamarine = UIColor(hex: "#7FFFD4")
    static let arcticLime = UIColor(hex: "#D0FF14")
    static let armyGreen = UIColor(hex: "#4B5320")
    static let arsenic = UIColor(hex: "#3B444B")
    static let artichoke = UIColor(hex: "#8F9779")
    static let arylideYellow = UIColor(hex: "#E9D66B")
    static let ashGrey = UIColor(hex: "#B2BEB5")
    static let asparagus = UIColor(hex: "#87A96B")
    static let atomicTangerine = UIColor(hex: "#FF9966")
    static let auburn = UIColor(hex: "#A52A2A")
    static let aureolin = UIColor(hex: "#FDEE00")
    static let auroMetalSaurus = UIColor(hex: "#6E7F80")
    static let avocado = UIColor(hex: "#568203")
    static let awesome = UIColor(hex: "#FF2052")
    static let aztecGold = UIColor(hex: "#C39953")
    static let azure = UIColor(hex: "#007FFF")
    static let azureWebColor = UIColor(hex: "#F0FFFF")
    static let azureMist = UIColor(hex: "#F0FFFF")
    static let azureishWhite = UIColor(hex: "#DBE9F4")
    static let babyBlue = UIColor(hex: "#89CFF0")
    static let babyBlueEyes = UIColor(hex: "#A1CAF1")
    static let babyPink = UIColor(hex: "#F4C2C2")
    static let babyPowder = UIColor(hex: "#FEFEFA")
    static let bakerMillerPink = UIColor(hex: "#FF91AF")
    static let ballBlue = UIColor(hex: "#21ABCD")
    static let bananaMania = UIColor(hex: "#FAE7B5")
    static let bananaYellow = UIColor(hex: "#FFE135")
    static let bangladeshGreen = UIColor(hex: "#006A4E")
    static let barbiePink = UIColor(hex: "#E0218A")
    static let barnRed = UIColor(hex: "#7C0A02")
    static let batteryChargedBlue = UIColor(hex: "#1DACD6")
    static let battleshipGrey = UIColor(hex: "#848482")
    static let bazaar = UIColor(hex: "#98777B")
    static let beauBlue = UIColor(hex: "#BCD4E6")
    static let beaver = UIColor(hex: "#9F8170")
    static let begonia = UIColor(hex: "#FA6E79")
    static let beige = UIColor(hex: "#F5F5DC")
    static let bdazzledBlue = UIColor(hex: "#2E5894")
    static let bigDipOruby = UIColor(hex: "#9C2542")
    static let bigFootFeet = UIColor(hex: "#E88E5A")
    static let bisque = UIColor(hex: "#FFE4C4")
    static let bistre = UIColor(hex: "#3D2B1F")
    static let bistreBrown = UIColor(hex: "#967117")
    static let bitterLemon = UIColor(hex: "#CAE00D")
    static let bitterLime = UIColor(hex: "#BFFF00")
    static let bittersweet = UIColor(hex: "#FE6F5E")
    static let bittersweetShimmer = UIColor(hex: "#BF4F51")
    static let black = UIColor(hex: "#000000")
    static let blackBean = UIColor(hex: "#3D0C02")
    static let blackCoral = UIColor(hex: "#54626F")
    static let blackLeatherJacket = UIColor(hex: "#253529")
    static let blackOlive = UIColor(hex: "#3B3C36")
    static let blackShadows = UIColor(hex: "#BFAFB2")
    static let blanchedAlmond = UIColor(hex: "#FFEBCD")
    static let blastOffBronze = UIColor(hex: "#A57164")
    static let bleuDeFrance = UIColor(hex: "#318CE7")
    static let blizzardBlue = UIColor(hex: "#ACE5EE")
    static let blond = UIColor(hex: "#FAF0BE")
    static let blue = UIColor(hex: "#0000FF")
    static let blueCrayola = UIColor(hex: "#1F75FE")
    static let blueMunsell = UIColor(hex: "#0093AF")
    static let blueNCS = UIColor(hex: "#0087BD")
    static let bluePantone = UIColor(hex: "#0018A8")
    static let bluePigment = UIColor(hex: "#333399")
    static let blueRYB = UIColor(hex: "#0247FE")
    static let blueBell = UIColor(hex: "#A2A2D0")
    static let blueBolt = UIColor(hex: "#00B9FB")
    static let blueGray = UIColor(hex: "#6699CC")
    static let blueGreen = UIColor(hex: "#0D98BA")
    static let blueJeans = UIColor(hex: "#5DADEC")
    static let blueLagoon = UIColor(hex: "#ACE5EE")
    static let blueMagentaViolet = UIColor(hex: "#553592")
    static let blueSapphire = UIColor(hex: "#126180")
    static let blueViolet = UIColor(hex: "#8A2BE2")
    static let blueYonder = UIColor(hex: "#5072A7")
    static let blueberry = UIColor(hex: "#4F86F7")
    static let bluebonnet = UIColor(hex: "#1C1CF0")
    static let blush = UIColor(hex: "#DE5D83")
    static let bole = UIColor(hex: "#79443B")
    static let bondiBlue = UIColor(hex: "#0095B6")
    static let bone = UIColor(hex: "#E3DAC9")
    static let boogerBuster = UIColor(hex: "#DDE26A")
    static let bostonUniversityRed = UIColor(hex: "#CC0000")
    static let bottleGreen = UIColor(hex: "#006A4E")
    static let boysenberry = UIColor(hex: "#873260")
    static let brandeisBlue = UIColor(hex: "#0070FF")
    static let brass = UIColor(hex: "#B5A642")
    static let brickRed = UIColor(hex: "#CB4154")
    static let brightCerulean = UIColor(hex: "#1DACD6")
    static let brightGreen = UIColor(hex: "#66FF00")
    static let brightLavender = UIColor(hex: "#BF94E4")
    static let brightLilac = UIColor(hex: "#D891EF")
    static let brightMaroon = UIColor(hex: "#C32148")
    static let brightNavyBlue = UIColor(hex: "#1974D2")
    static let brightPink = UIColor(hex: "#FF007F")
    static let brightTurquoise = UIColor(hex: "#08E8DE")
    static let brightUbe = UIColor(hex: "#D19FE8")
    static let brightYellowCrayola = UIColor(hex: "#FFAA1D")
    static let brilliantAzure = UIColor(hex: "#3399FF")
    static let brilliantLavender = UIColor(hex: "#F4BBFF")
    static let brilliantRose = UIColor(hex: "#FF55A3")
    static let brinkPink = UIColor(hex: "#FB607F")
    static let britishRacingGreen = UIColor(hex: "#004225")
    static let bronze = UIColor(hex: "#CD7F32")
    static let bronzeYellow = UIColor(hex: "#737000")
    static let brownTraditional = UIColor(hex: "#964B00")
    static let brownWeb = UIColor(hex: "#A52A2A")
    static let brownNose = UIColor(hex: "#6B4423")
    static let brownSugar = UIColor(hex: "#AF6E4D")
    static let brownYellow = UIColor(hex: "#cc9966")
    static let brunswickGreen = UIColor(hex: "#1B4D3E")
    static let bubbleGum = UIColor(hex: "#FFC1CC")
    static let bubbles = UIColor(hex: "#E7FEFF")
    static let budGreen = UIColor(hex: "#7BB661")
    static let buff = UIColor(hex: "#F0DC82")
    static let bulgarianRose = UIColor(hex: "#480607")
    static let burgundy = UIColor(hex: "#800020")
    static let burlywood = UIColor(hex: "#DEB887")
    static let burnishedBrown = UIColor(hex: "#A17A74")
    static let burntOrange = UIColor(hex: "#CC5500")
    static let burntSienna = UIColor(hex: "#E97451")
    static let burntUmber = UIColor(hex: "#8A3324")
    static let buttonBlue = UIColor(hex: "#24A0ED")
    static let byzantine = UIColor(hex: "#BD33A4")
    static let byzantium = UIColor(hex: "#702963")
    static let cadet = UIColor(hex: "#536872")
    static let cadetBlue = UIColor(hex: "#5F9EA0")
    static let cadetGrey = UIColor(hex: "#91A3B0")
    static let cadmiumGreen = UIColor(hex: "#006B3C")
    static let cadmiumOrange = UIColor(hex: "#ED872D")
    static let cadmiumRed = UIColor(hex: "#E30022")
    static let cadmiumYellow = UIColor(hex: "#FFF600")
    static let caféAuLait = UIColor(hex: "#A67B5B")
    static let caféNoir = UIColor(hex: "#4B3621")
    static let calPolyPomonaGreen = UIColor(hex: "#1E4D2B")
    static let cambridgeBlue = UIColor(hex: "#A3C1AD")
    static let camel = UIColor(hex: "#C19A6B")
    static let cameoPink = UIColor(hex: "#EFBBCC")
    static let camouflageGreen = UIColor(hex: "#78866B")
    static let canary = UIColor(hex: "#FFFF99")
    static let canaryYellow = UIColor(hex: "#FFEF00")
    static let candyAppleRed = UIColor(hex: "#FF0800")
    static let candyPink = UIColor(hex: "#E4717A")
    static let capri = UIColor(hex: "#00BFFF")
    static let caputMortuum = UIColor(hex: "#592720")
    static let cardinal = UIColor(hex: "#C41E3A")
    static let caribbeanGreen = UIColor(hex: "#00CC99")
    static let carmine = UIColor(hex: "#960018")
    static let carmineMP = UIColor(hex: "#D70040")
    static let carminePink = UIColor(hex: "#EB4C42")
    static let carmineRed = UIColor(hex: "#FF0038")
    static let carnationPink = UIColor(hex: "#FFA6C9")
    static let carnelian = UIColor(hex: "#B31B1B")
    static let carolinaBlue = UIColor(hex: "#56A0D3")
    static let carrotOrange = UIColor(hex: "#ED9121")
    static let castletonGreen = UIColor(hex: "#00563F")
    static let catalinaBlue = UIColor(hex: "#062A78")
    static let catawba = UIColor(hex: "#703642")
    static let cedarChest = UIColor(hex: "#C95A49")
    static let ceil = UIColor(hex: "#92A1CF")
    static let celadon = UIColor(hex: "#ACE1AF")
    static let celadonBlue = UIColor(hex: "#007BA7")
    static let celadonGreen = UIColor(hex: "#2F847C")
    static let celeste = UIColor(hex: "#B2FFFF")
    static let celestialBlue = UIColor(hex: "#4997D0")
    static let cerise = UIColor(hex: "#DE3163")
    static let cerisePink = UIColor(hex: "#EC3B83")
    static let cerulean = UIColor(hex: "#007BA7")
    static let ceruleanBlue = UIColor(hex: "#2A52BE")
    static let ceruleanFrost = UIColor(hex: "#6D9BC3")
    static let cGBlue = UIColor(hex: "#007AA5")
    static let cGRed = UIColor(hex: "#E03C31")
    static let chamoisee = UIColor(hex: "#A0785A")
    static let champagne = UIColor(hex: "#F7E7CE")
    static let champagnePink = UIColor(hex: "#F1DDCF")
    static let charcoal = UIColor(hex: "#36454F")
    static let charlestonGreen = UIColor(hex: "#232B2B")
    static let charmPink = UIColor(hex: "#E68FAC")
    static let chartreuseTraditional = UIColor(hex: "#DFFF00")
    static let chartreuseWeb = UIColor(hex: "#7FFF00")
    static let cherry = UIColor(hex: "#DE3163")
    static let cherryBlossomPink = UIColor(hex: "#FFB7C5")
    static let chestnut = UIColor(hex: "#954535")
    static let chinaPink = UIColor(hex: "#DE6FA1")
    static let chinaRose = UIColor(hex: "#A8516E")
    static let chineseRed = UIColor(hex: "#AA381E")
    static let chineseViolet = UIColor(hex: "#856088")
    static let chlorophyllGreen = UIColor(hex: "#4AFF00")
    static let chocolateTraditional = UIColor(hex: "#7B3F00")
    static let chocolateWeb = UIColor(hex: "#D2691E")
    static let chromeYellow = UIColor(hex: "#FFA700")
    static let cinereous = UIColor(hex: "#98817B")
    static let cinnabar = UIColor(hex: "#E34234")
    static let cinnamon = UIColor(hex: "#D2691E")
    static let cinnamonSatin = UIColor(hex: "#CD607E")
    static let citrine = UIColor(hex: "#E4D00A")
    static let citron = UIColor(hex: "#9FA91F")
    static let claret = UIColor(hex: "#7F1734")
    static let classicRose = UIColor(hex: "#FBCCE7")
    static let cobaltBlue = UIColor(hex: "#0047AB")
    static let cocoaBrown = UIColor(hex: "#D2691E")
    static let coconut = UIColor(hex: "#965A3E")
    static let coffee = UIColor(hex: "#6F4E37")
    static let columbiaBlue = UIColor(hex: "#C4D8E2")
    static let congoPink = UIColor(hex: "#F88379")
    static let coolBlack = UIColor(hex: "#002E63")
    static let coolGrey = UIColor(hex: "#8C92AC")
    static let copper = UIColor(hex: "#B87333")
    static let copperCrayola = UIColor(hex: "#DA8A67")
    static let copperPenny = UIColor(hex: "#AD6F69")
    static let copperRed = UIColor(hex: "#CB6D51")
    static let copperRose = UIColor(hex: "#996666")
    static let coquelicot = UIColor(hex: "#FF3800")
    static let coral = UIColor(hex: "#FF7F50")
    static let coralPink = UIColor(hex: "#F88379")
    static let coralRed = UIColor(hex: "#FF4040")
    static let coralReef = UIColor(hex: "#FD7C6E")
    static let cordovan = UIColor(hex: "#893F45")
    static let corn = UIColor(hex: "#FBEC5D")
    static let cornellRed = UIColor(hex: "#B31B1B")
    static let cornflowerBlue = UIColor(hex: "#6495ED")
    static let cornsilk = UIColor(hex: "#FFF8DC")
    static let cosmicCobalt = UIColor(hex: "#2E2D88")
    static let cosmicLatte = UIColor(hex: "#FFF8E7")
    static let coyoteBrown = UIColor(hex: "#81613C")
    static let cottonCandy = UIColor(hex: "#FFBCD9")
    static let cream = UIColor(hex: "#FFFDD0")
    static let crimson = UIColor(hex: "#DC143C")
    static let crimsonGlory = UIColor(hex: "#BE0032")
    static let crimsonRed = UIColor(hex: "#990000")
    static let cultured = UIColor(hex: "#F5F5F5")
    static let cyan = UIColor(hex: "#00FFFF")
    static let cyanAzure = UIColor(hex: "#4E82B4")
    static let cyanBlueAzure = UIColor(hex: "#4682BF")
    static let cyanCobaltBlue = UIColor(hex: "#28589C")
    static let cyanCornflowerBlue = UIColor(hex: "#188BC2")
    static let cyanProcess = UIColor(hex: "#00B7EB")
    static let cyberGrape = UIColor(hex: "#58427C")
    static let cyberYellow = UIColor(hex: "#FFD300")
    static let cyclamen = UIColor(hex: "#F56FA1")
    static let daffodil = UIColor(hex: "#FFFF31")
    static let dandelion = UIColor(hex: "#F0E130")
    static let darkBlue = UIColor(hex: "#00008B")
    static let darkBlueGray = UIColor(hex: "#666699")
    static let darkBrown = UIColor(hex: "#654321")
    static let darkBrownTangelo = UIColor(hex: "#88654E")
    static let darkByzantium = UIColor(hex: "#5D3954")
    static let darkCandyAppleRed = UIColor(hex: "#A40000")
    static let darkCerulean = UIColor(hex: "#08457E")
    static let darkChestnut = UIColor(hex: "#986960")
    static let darkCoral = UIColor(hex: "#CD5B45")
    static let darkCyan = UIColor(hex: "#008B8B")
    static let darkElectricBlue = UIColor(hex: "#536878")
    static let darkGoldenrod = UIColor(hex: "#B8860B")
    static let darkGrayX11 = UIColor(hex: "#A9A9A9")
    static let darkGreen = UIColor(hex: "#013220")
    static let darkGreenX11 = UIColor(hex: "#006400")
    static let darkGunmetal = UIColor(hex: "#1F262A")
    static let darkImperialBlue = UIColor(hex: "#00416A")
    static let darkJungleGreen = UIColor(hex: "#1A2421")
    static let darkKhaki = UIColor(hex: "#BDB76B")
    static let darkLava = UIColor(hex: "#483C32")
    static let darkLavender = UIColor(hex: "#734F96")
    static let darkLiver = UIColor(hex: "#534B4F")
    static let darkLiverHorses = UIColor(hex: "#543D37")
    static let darkMagenta = UIColor(hex: "#8B008B")
    static let darkMediumGray = UIColor(hex: "#A9A9A9")
    static let darkMidnightBlue = UIColor(hex: "#003366")
    static let darkMossGreen = UIColor(hex: "#4A5D23")
    static let darkOliveGreen = UIColor(hex: "#556B2F")
    static let darkOrange = UIColor(hex: "#FF8C00")
    static let darkOrchid = UIColor(hex: "#9932CC")
    static let darkPastelBlue = UIColor(hex: "#779ECB")
    static let darkPastelGreen = UIColor(hex: "#03C03C")
    static let darkPastelPurple = UIColor(hex: "#966FD6")
    static let darkPastelRed = UIColor(hex: "#C23B22")
    static let darkPink = UIColor(hex: "#E75480")
    static let darkPowderBlue = UIColor(hex: "#003399")
    static let darkPuce = UIColor(hex: "#4F3A3C")
    static let darkPurple = UIColor(hex: "#301934")
    static let darkRaspberry = UIColor(hex: "#872657")
    static let darkRed = UIColor(hex: "#8B0000")
    static let darkSalmon = UIColor(hex: "#E9967A")
    static let darkScarlet = UIColor(hex: "#560319")
    static let darkSeaGreen = UIColor(hex: "#8FBC8F")
    static let darkSienna = UIColor(hex: "#3C1414")
    static let darkSkyBlue = UIColor(hex: "#8CBED6")
    static let darkSlateBlue = UIColor(hex: "#483D8B")
    static let darkSlateGray = UIColor(hex: "#2F4F4F")
    static let darkSpringGreen = UIColor(hex: "#177245")
    static let darkTan = UIColor(hex: "#918151")
    static let darkTangerine = UIColor(hex: "#FFA812")
    static let darkTaupe = UIColor(hex: "#483C32")
    static let darkTerraCotta = UIColor(hex: "#CC4E5C")
    static let darkTurquoise = UIColor(hex: "#00CED1")
    static let darkVanilla = UIColor(hex: "#D1BEA8")
    static let darkViolet = UIColor(hex: "#9400D3")
    static let darkYellow = UIColor(hex: "#9B870C")
    static let dartmouthGreen = UIColor(hex: "#00703C")
    static let davysGrey = UIColor(hex: "#555555")
    static let debianRed = UIColor(hex: "#D70A53")
    static let deepAquamarine = UIColor(hex: "#40826D")
    static let deepCarmine = UIColor(hex: "#A9203E")
    static let deepCarminePink = UIColor(hex: "#EF3038")
    static let deepCarrotOrange = UIColor(hex: "#E9692C")
    static let deepCerise = UIColor(hex: "#DA3287")
    static let deepChampagne = UIColor(hex: "#FAD6A5")
    static let deepChestnut = UIColor(hex: "#B94E48")
    static let deepCoffee = UIColor(hex: "#704241")
    static let deepFuchsia = UIColor(hex: "#C154C1")
    static let deepGreen = UIColor(hex: "#056608")
    static let deepGreenCyanTurquoise = UIColor(hex: "#0E7C61")
    static let deepJungleGreen = UIColor(hex: "#004B49")
    static let deepKoamaru = UIColor(hex: "#333366")
    static let deepLemon = UIColor(hex: "#F5C71A")
    static let deepLilac = UIColor(hex: "#9955BB")
    static let deepMagenta = UIColor(hex: "#CC00CC")
    static let deepMaroon = UIColor(hex: "#820000")
    static let deepMauve = UIColor(hex: "#D473D4")
    static let deepMossGreen = UIColor(hex: "#355E3B")
    static let deepPeach = UIColor(hex: "#FFCBA4")
    static let deepPink = UIColor(hex: "#FF1493")
    static let deepPuce = UIColor(hex: "#A95C68")
    static let deepRed = UIColor(hex: "#850101")
    static let deepRuby = UIColor(hex: "#843F5B")
    static let deepSaffron = UIColor(hex: "#FF9933")
    static let deepSkyBlue = UIColor(hex: "#00BFFF")
    static let deepSpaceSparkle = UIColor(hex: "#4A646C")
    static let deepSpringBud = UIColor(hex: "#556B2F")
    static let deepTaupe = UIColor(hex: "#7E5E60")
    static let deepTuscanRed = UIColor(hex: "#66424D")
    static let deepViolet = UIColor(hex: "#330066")
    static let deer = UIColor(hex: "#BA8759")
    static let denim = UIColor(hex: "#1560BD")
    static let denimBlue = UIColor(hex: "#2243B6")
    static let desaturatedCyan = UIColor(hex: "#669999")
    static let desert = UIColor(hex: "#C19A6B")
    static let desertSand = UIColor(hex: "#EDC9AF")
    static let desire = UIColor(hex: "#EA3C53")
    static let diamond = UIColor(hex: "#B9F2FF")
    static let dimGray = UIColor(hex: "#696969")
    static let dingyDungeon = UIColor(hex: "#C53151")
    static let dirt = UIColor(hex: "#9B7653")
    static let dodgerBlue = UIColor(hex: "#1E90FF")
    static let dogwoodRose = UIColor(hex: "#D71868")
    static let dollarBill = UIColor(hex: "#85BB65")
    static let dolphinGray = UIColor(hex: "#828E84")
    static let donkeyBrown = UIColor(hex: "#664C28")
    static let drab = UIColor(hex: "#967117")
    static let dukeBlue = UIColor(hex: "#00009C")
    static let dustStorm = UIColor(hex: "#E5CCC9")
    static let dutchWhite = UIColor(hex: "#EFDFBB")
    static let earthYellow = UIColor(hex: "#E1A95F")
    static let ebony = UIColor(hex: "#555D50")
    static let ecru = UIColor(hex: "#C2B280")
    static let eerieBlack = UIColor(hex: "#1B1B1B")
    static let eggplant = UIColor(hex: "#614051")
    static let eggshell = UIColor(hex: "#F0EAD6")
    static let egyptianBlue = UIColor(hex: "#1034A6")
    static let electricBlue = UIColor(hex: "#7DF9FF")
    static let electricCrimson = UIColor(hex: "#FF003F")
    static let electricCyan = UIColor(hex: "#00FFFF")
    static let electricGreen = UIColor(hex: "#00FF00")
    static let electricIndigo = UIColor(hex: "#6F00FF")
    static let electricLavender = UIColor(hex: "#F4BBFF")
    static let electricLime = UIColor(hex: "#CCFF00")
    static let electricPurple = UIColor(hex: "#BF00FF")
    static let electricUltramarine = UIColor(hex: "#3F00FF")
    static let electricViolet = UIColor(hex: "#8F00FF")
    static let electricYellow = UIColor(hex: "#FFFF33")
    static let emerald = UIColor(hex: "#50C878")
    static let eminence = UIColor(hex: "#6C3082")
    static let englishGreen = UIColor(hex: "#1B4D3E")
    static let englishLavender = UIColor(hex: "#B48395")
    static let englishRed = UIColor(hex: "#AB4B52")
    static let englishVermillion = UIColor(hex: "#CC474B")
    static let englishViolet = UIColor(hex: "#563C5C")
    static let etonBlue = UIColor(hex: "#96C8A2")
    static let eucalyptus = UIColor(hex: "#44D7A8")
    static let fallow = UIColor(hex: "#C19A6B")
    static let faluRed = UIColor(hex: "#801818")
    static let fandango = UIColor(hex: "#B53389")
    static let fandangoPink = UIColor(hex: "#DE5285")
    static let fashionFuchsia = UIColor(hex: "#F400A1")
    static let fawn = UIColor(hex: "#E5AA70")
    static let feldgrau = UIColor(hex: "#4D5D53")
    static let feldspar = UIColor(hex: "#FDD5B1")
    static let fernGreen = UIColor(hex: "#4F7942")
    static let ferrariRed = UIColor(hex: "#FF2800")
    static let fieldDrab = UIColor(hex: "#6C541E")
    static let fieryRose = UIColor(hex: "#FF5470")
    static let firebrick = UIColor(hex: "#B22222")
    static let fireEngineRed = UIColor(hex: "#CE2029")
    static let flame = UIColor(hex: "#E25822")
    static let flamingoPink = UIColor(hex: "#FC8EAC")
    static let flattery = UIColor(hex: "#6B4423")
    static let flavescent = UIColor(hex: "#F7E98E")
    static let flax = UIColor(hex: "#EEDC82")
    static let flirt = UIColor(hex: "#A2006D")
    static let floralWhite = UIColor(hex: "#FFFAF0")
    static let fluorescentOrange = UIColor(hex: "#FFBF00")
    static let fluorescentPink = UIColor(hex: "#FF1493")
    static let fluorescentYellow = UIColor(hex: "#CCFF00")
    static let folly = UIColor(hex: "#FF004F")
    static let forestGreenTraditional = UIColor(hex: "#014421")
    static let forestGreenWeb = UIColor(hex: "#228B22")
    static let frenchBeige = UIColor(hex: "#A67B5B")
    static let frenchBistre = UIColor(hex: "#856D4D")
    static let frenchBlue = UIColor(hex: "#0072BB")
    static let frenchFuchsia = UIColor(hex: "#FD3F92")
    static let frenchLilac = UIColor(hex: "#86608E")
    static let frenchLime = UIColor(hex: "#9EFD38")
    static let frenchMauve = UIColor(hex: "#D473D4")
    static let frenchPink = UIColor(hex: "#FD6C9E")
    static let frenchPlum = UIColor(hex: "#811453")
    static let frenchPuce = UIColor(hex: "#4E1609")
    static let frenchRaspberry = UIColor(hex: "#C72C48")
    static let frenchRose = UIColor(hex: "#F64A8A")
    static let frenchSkyBlue = UIColor(hex: "#77B5FE")
    static let frenchViolet = UIColor(hex: "#8806CE")
    static let frenchWine = UIColor(hex: "#AC1E44")
    static let freshAir = UIColor(hex: "#A6E7FF")
    static let frostbite = UIColor(hex: "#E936A7")
    static let fuchsia = UIColor(hex: "#FF00FF")
    static let fuchsiaCrayola = UIColor(hex: "#C154C1")
    static let fuchsiaPink = UIColor(hex: "#FF77FF")
    static let fuchsiaPurple = UIColor(hex: "#CC397B")
    static let fuchsiaRose = UIColor(hex: "#C74375")
    static let fulvous = UIColor(hex: "#E48400")
    static let fuzzyWuzzy = UIColor(hex: "#CC6666")
    static let gainsboro = UIColor(hex: "#DCDCDC")
    static let gamboge = UIColor(hex: "#E49B0F")
    static let gambogeOrangeBrown = UIColor(hex: "#996600")
    static let gargoyleGas = UIColor(hex: "#FFDF46")
    static let genericViridian = UIColor(hex: "#007F66")
    static let ghostWhite = UIColor(hex: "#F8F8FF")
    static let giantsClub = UIColor(hex: "#B05C52")
    static let giantsOrange = UIColor(hex: "#FE5A1D")
    static let ginger = UIColor(hex: "#B06500")
    static let glaucous = UIColor(hex: "#6082B6")
    static let glitter = UIColor(hex: "#E6E8FA")
    static let glossyGrape = UIColor(hex: "#AB92B3")
    static let gOGreen = UIColor(hex: "#00AB66")
    static let goldMetallic = UIColor(hex: "#D4AF37")
    static let goldWebGolden = UIColor(hex: "#FFD700")
    static let goldFusion = UIColor(hex: "#85754E")
    static let goldenBrown = UIColor(hex: "#996515")
    static let goldenPoppy = UIColor(hex: "#FCC200")
    static let goldenYellow = UIColor(hex: "#FFDF00")
    static let goldenrod = UIColor(hex: "#DAA520")
    static let graniteGray = UIColor(hex: "#676767")
    static let grannySmithApple = UIColor(hex: "#A8E4A0")
    static let grape = UIColor(hex: "#6F2DA8")
    static let gray = UIColor(hex: "#808080")
    static let grayHTMLCSSGray = UIColor(hex: "#808080")
    static let grayX11Gray = UIColor(hex: "#BEBEBE")
    static let grayAsparagus = UIColor(hex: "#465945")
    static let grayBlue = UIColor(hex: "#8C92AC")
    static let greenColorWheelX11Green = UIColor(hex: "#00FF00")
    static let greenCrayola = UIColor(hex: "#1CAC78")
    static let greenHTMLCSSColor = UIColor(hex: "#008000")
    static let greenMunsell = UIColor(hex: "#00A877")
    static let greenNCS = UIColor(hex: "#009F6B")
    static let greenPantone = UIColor(hex: "#00AD43")
    static let greenPigment = UIColor(hex: "#00A550")
    static let greenRYB = UIColor(hex: "#66B032")
    static let greenBlue = UIColor(hex: "#1164B4")
    static let greenCyan = UIColor(hex: "#009966")
    static let greenLizard = UIColor(hex: "#A7F432")
    static let greenSheen = UIColor(hex: "#6EAEA1")
    static let greenYellow = UIColor(hex: "#ADFF2F")
    static let grizzly = UIColor(hex: "#885818")
    static let grullo = UIColor(hex: "#A99A86")
    static let guppieGreen = UIColor(hex: "#00FF7F")
    static let gunmetal = UIColor(hex: "#2a3439")
    static let halayàÚbe = UIColor(hex: "#663854")
    static let hanBlue = UIColor(hex: "#446CCF")
    static let hanPurple = UIColor(hex: "#5218FA")
    static let hansaYellow = UIColor(hex: "#E9D66B")
    static let harlequin = UIColor(hex: "#3FFF00")
    static let harlequinGreen = UIColor(hex: "#46CB18")
    static let harletdCrimson = UIColor(hex: "#C90016")
    static let harvestGold = UIColor(hex: "#DA9100")
    static let heartGold = UIColor(hex: "#808000")
    static let heatWave = UIColor(hex: "#FF7A00")
    static let heidelbergRed = UIColor(hex: "#960018")
    static let heliotrope = UIColor(hex: "#DF73FF")
    static let heliotropeGray = UIColor(hex: "#AA98A9")
    static let heliotropeMagenta = UIColor(hex: "#AA00BB")
    static let hollywoodCerise = UIColor(hex: "#F400A1")
    static let honeydew = UIColor(hex: "#F0FFF0")
    static let honoluluBlue = UIColor(hex: "#006DB0")
    static let hookersGreen = UIColor(hex: "#49796B")
    static let hotMagenta = UIColor(hex: "#FF1DCE")
    static let hotPink = UIColor(hex: "#FF69B4")
    static let hunterGreen = UIColor(hex: "#355E3B")
    static let iceberg = UIColor(hex: "#71A6D2")
    static let icterine = UIColor(hex: "#FCF75E")
    static let iguanaGreen = UIColor(hex: "#71BC78")
    static let illuminatingEmerald = UIColor(hex: "#319177")
    static let imperial = UIColor(hex: "#602F6B")
    static let imperialBlue = UIColor(hex: "#002395")
    static let imperialPurple = UIColor(hex: "#66023C")
    static let imperialRed = UIColor(hex: "#ED2939")
    static let inchworm = UIColor(hex: "#B2EC5D")
    static let independence = UIColor(hex: "#4C516D")
    static let indiaGreen = UIColor(hex: "#138808")
    static let indianRed = UIColor(hex: "#CD5C5C")
    static let indianYellow = UIColor(hex: "#E3A857")
    static let indigo = UIColor(hex: "#4B0082")
    static let indigoDye = UIColor(hex: "#091F92")
    static let indigoWeb = UIColor(hex: "#4B0082")
    static let infraRed = UIColor(hex: "#FF496C")
    static let interdimensionalBlue = UIColor(hex: "#360CCC")
    static let internationalKleinBlue = UIColor(hex: "#002FA7")
    static let internationalOrangeAerospace = UIColor(hex: "#FF4F00")
    static let internationalOrangeEngineering = UIColor(hex: "#BA160C")
    static let internationalOrangeGoldenGateBridge = UIColor(hex: "#C0362C")
    static let iris = UIColor(hex: "#5A4FCF")
    static let irresistible = UIColor(hex: "#B3446C")
    static let isabelline = UIColor(hex: "#F4F0EC")
    static let islamicGreen = UIColor(hex: "#009000")
    static let italianSkyBlue = UIColor(hex: "#B2FFFF")
    static let ivory = UIColor(hex: "#FFFFF0")
    static let jade = UIColor(hex: "#00A86B")
    static let japaneseCarmine = UIColor(hex: "#9D2933")
    static let japaneseIndigo = UIColor(hex: "#264348")
    static let japaneseViolet = UIColor(hex: "#5B3256")
    static let jasmine = UIColor(hex: "#F8DE7E")
    static let jasper = UIColor(hex: "#D73B3E")
    static let jazzberryJam = UIColor(hex: "#A50B5E")
    static let jellyBean = UIColor(hex: "#DA614E")
    static let jet = UIColor(hex: "#343434")
    static let jonquil = UIColor(hex: "#F4CA16")
    static let jordyBlue = UIColor(hex: "#8AB9F1")
    static let juneBud = UIColor(hex: "#BDDA57")
    static let jungleGreen = UIColor(hex: "#29AB87")
    static let kellyGreen = UIColor(hex: "#4CBB17")
    static let kenyanCopper = UIColor(hex: "#7C1C05")
    static let keppel = UIColor(hex: "#3AB09E")
    static let keyLime = UIColor(hex: "#E8F48C")
    static let khakiHTMLCSSKhaki = UIColor(hex: "#C3B091")
    static let khakiX11LightKhaki = UIColor(hex: "#F0E68C")
    static let kiwi = UIColor(hex: "#8EE53F")
    static let kobe = UIColor(hex: "#882D17")
    static let kobi = UIColor(hex: "#E79FC4")
    static let kobicha = UIColor(hex: "#6B4423")
    static let kombuGreen = UIColor(hex: "#354230")
    static let kSUPurple = UIColor(hex: "#512888")
    static let kUCrimson = UIColor(hex: "#E8000D")
    static let laSalleGreen = UIColor(hex: "#087830")
    static let languidLavender = UIColor(hex: "#D6CADD")
    static let lapisLazuli = UIColor(hex: "#26619C")
    static let laserLemon = UIColor(hex: "#FFFF66")
    static let laurelGreen = UIColor(hex: "#A9BA9D")
    static let lava = UIColor(hex: "#CF1020")
    static let lavenderFloral = UIColor(hex: "#B57EDC")
    static let lavenderWeb = UIColor(hex: "#E6E6FA")
    static let lavenderBlue = UIColor(hex: "#CCCCFF")
    static let lavenderBlush = UIColor(hex: "#FFF0F5")
    static let lavenderGray = UIColor(hex: "#C4C3D0")
    static let lavenderIndigo = UIColor(hex: "#9457EB")
    static let lavenderMagenta = UIColor(hex: "#EE82EE")
    static let lavenderMist = UIColor(hex: "#E6E6FA")
    static let lavenderPink = UIColor(hex: "#FBAED2")
    static let lavenderPurple = UIColor(hex: "#967BB6")
    static let lavenderRose = UIColor(hex: "#FBA0E3")
    static let lawnGreen = UIColor(hex: "#7CFC00")
    static let lemon = UIColor(hex: "#FFF700")
    static let lemonChiffon = UIColor(hex: "#FFFACD")
    static let lemonCurry = UIColor(hex: "#CCA01D")
    static let lemonGlacier = UIColor(hex: "#FDFF00")
    static let lemonLime = UIColor(hex: "#E3FF00")
    static let lemonMeringue = UIColor(hex: "#F6EABE")
    static let lemonYellow = UIColor(hex: "#FFF44F")
    static let licorice = UIColor(hex: "#1A1110")
    static let liberty = UIColor(hex: "#545AA7")
    static let lightApricot = UIColor(hex: "#FDD5B1")
    static let lightBlue = UIColor(hex: "#ADD8E6")
    static let lightBrown = UIColor(hex: "#B5651D")
    static let lightCarminePink = UIColor(hex: "#E66771")
    static let lightCobaltBlue = UIColor(hex: "#88ACE0")
    static let lightCoral = UIColor(hex: "#F08080")
    static let lightCornflowerBlue = UIColor(hex: "#93CCEA")
    static let lightCrimson = UIColor(hex: "#F56991")
    static let lightCyan = UIColor(hex: "#E0FFFF")
    static let lightDeepPink = UIColor(hex: "#FF5CCD")
    static let lightFrenchBeige = UIColor(hex: "#C8AD7F")
    static let lightFuchsiaPink = UIColor(hex: "#F984EF")
    static let lightGoldenrodYellow = UIColor(hex: "#FAFAD2")
    static let lightGray = UIColor(hex: "#D3D3D3")
    static let lightGrayishMagenta = UIColor(hex: "#CC99CC")
    static let lightGreen = UIColor(hex: "#90EE90")
    static let lightHotPink = UIColor(hex: "#FFB3DE")
    static let lightKhaki = UIColor(hex: "#F0E68C")
    static let lightMediumOrchid = UIColor(hex: "#D39BCB")
    static let lightMossGreen = UIColor(hex: "#ADDFAD")
    static let lightOrange = UIColor(hex: "#FED8B1")
    static let lightOrchid = UIColor(hex: "#E6A8D7")
    static let lightPastelPurple = UIColor(hex: "#B19CD9")
    static let lightPink = UIColor(hex: "#FFB6C1")
    static let lightRedOchre = UIColor(hex: "#E97451")
    static let lightSalmon = UIColor(hex: "#FFA07A")
    static let lightSalmonPink = UIColor(hex: "#FF9999")
    static let lightSeaGreen = UIColor(hex: "#20B2AA")
    static let lightSkyBlue = UIColor(hex: "#87CEFA")
    static let lightSlateGray = UIColor(hex: "#778899")
    static let lightSteelBlue = UIColor(hex: "#B0C4DE")
    static let lightTaupe = UIColor(hex: "#B38B6D")
    static let lightThulianPink = UIColor(hex: "#E68FAC")
    static let lightYellow = UIColor(hex: "#FFFFE0")
    static let lilac = UIColor(hex: "#C8A2C8")
    static let lilacLuster = UIColor(hex: "#AE98AA")
    static let limeColorWheel = UIColor(hex: "#BFFF00")
    static let limeWebX11Green = UIColor(hex: "#00FF00")
    static let limeGreen = UIColor(hex: "#32CD32")
    static let limerick = UIColor(hex: "#9DC209")
    static let lincolnGreen = UIColor(hex: "#195905")
    static let linen = UIColor(hex: "#FAF0E6")
    static let loeen = UIColor(hex: "#15F2FD")
    static let liseranPurple = UIColor(hex: "#DE6FA1")
    static let littleBoyBlue = UIColor(hex: "#6CA0DC")
    static let liver = UIColor(hex: "#674C47")
    static let liverDogs = UIColor(hex: "#B86D29")
    static let liverOrgan = UIColor(hex: "#6C2E1F")
    static let liverChestnut = UIColor(hex: "#987456")
    static let livid = UIColor(hex: "#6699CC")
    static let lumber = UIColor(hex: "#FFE4CD")
    static let lust = UIColor(hex: "#E62020")
    static let maastrichtBlue = UIColor(hex: "#001C3D")
    static let macaroniAndCheese = UIColor(hex: "#FFBD88")
    static let madderLake = UIColor(hex: "#CC3336")
    static let magenta = UIColor(hex: "#FF00FF")
    static let magentaCrayola = UIColor(hex: "#FF55A3")
    static let magentaDye = UIColor(hex: "#CA1F7B")
    static let magentaPantone = UIColor(hex: "#D0417E")
    static let magentaProcess = UIColor(hex: "#FF0090")
    static let magentaHaze = UIColor(hex: "#9F4576")
    static let magentaPink = UIColor(hex: "#CC338B")
    static let magicMint = UIColor(hex: "#AAF0D1")
    static let magicPotion = UIColor(hex: "#FF4466")
    static let magnolia = UIColor(hex: "#F8F4FF")
    static let mahogany = UIColor(hex: "#C04000")
    static let maize = UIColor(hex: "#FBEC5D")
    static let majorelleBlue = UIColor(hex: "#6050DC")
    static let malachite = UIColor(hex: "#0BDA51")
    static let manatee = UIColor(hex: "#979AAA")
    static let mandarin = UIColor(hex: "#F37A48")
    static let mangoTango = UIColor(hex: "#FF8243")
    static let mantis = UIColor(hex: "#74C365")
    static let mardiGras = UIColor(hex: "#880085")
    static let marigold = UIColor(hex: "#EAA221")
    static let maroonCrayola = UIColor(hex: "#C32148")
    static let maroonHTMLCSS = UIColor(hex: "#800000")
    static let maroonX11 = UIColor(hex: "#B03060")
    static let mauve = UIColor(hex: "#E0B0FF")
    static let mauveTaupe = UIColor(hex: "#915F6D")
    static let mauvelous = UIColor(hex: "#EF98AA")
    static let maximumBlue = UIColor(hex: "#47ABCC")
    static let maximumBlueGreen = UIColor(hex: "#30BFBF")
    static let maximumBluePurple = UIColor(hex: "#ACACE6")
    static let maximumGreen = UIColor(hex: "#5E8C31")
    static let maximumGreenYellow = UIColor(hex: "#D9E650")
    static let maximumPurple = UIColor(hex: "#733380")
    static let maximumRed = UIColor(hex: "#D92121")
    static let maximumRedPurple = UIColor(hex: "#A63A79")
    static let maximumYellow = UIColor(hex: "#FAFA37")
    static let maximumYellowRed = UIColor(hex: "#F2BA49")
    static let mayGreen = UIColor(hex: "#4C9141")
    static let mayaBlue = UIColor(hex: "#73C2FB")
    static let meatBrown = UIColor(hex: "#E5B73B")
    static let mediumAquamarine = UIColor(hex: "#66DDAA")
    static let mediumBlue = UIColor(hex: "#0000CD")
    static let mediumCandyAppleRed = UIColor(hex: "#E2062C")
    static let mediumCarmine = UIColor(hex: "#AF4035")
    static let mediumChampagne = UIColor(hex: "#F3E5AB")
    static let mediumElectricBlue = UIColor(hex: "#035096")
    static let mediumJungleGreen = UIColor(hex: "#1C352D")
    static let mediumLavenderMagenta = UIColor(hex: "#DDA0DD")
    static let mediumOrchid = UIColor(hex: "#BA55D3")
    static let mediumPersianBlue = UIColor(hex: "#0067A5")
    static let mediumPurple = UIColor(hex: "#9370DB")
    static let mediumRedViolet = UIColor(hex: "#BB3385")
    static let mediumRuby = UIColor(hex: "#AA4069")
    static let mediumSeaGreen = UIColor(hex: "#3CB371")
    static let mediumSkyBlue = UIColor(hex: "#80DAEB")
    static let mediumSlateBlue = UIColor(hex: "#7B68EE")
    static let mediumSpringBud = UIColor(hex: "#C9DC87")
    static let mediumSpringGreen = UIColor(hex: "#00FA9A")
    static let mediumTaupe = UIColor(hex: "#674C47")
    static let mediumTurquoise = UIColor(hex: "#48D1CC")
    static let mediumTuscanRed = UIColor(hex: "#79443B")
    static let mediumVermilion = UIColor(hex: "#D9603B")
    static let mediumVioletRed = UIColor(hex: "#C71585")
    static let mellowApricot = UIColor(hex: "#F8B878")
    static let mellowYellow = UIColor(hex: "#F8DE7E")
    static let melon = UIColor(hex: "#FDBCB4")
    static let metallicSeaweed = UIColor(hex: "#0A7E8C")
    static let metallicSunburst = UIColor(hex: "#9C7C38")
    static let mexicanPink = UIColor(hex: "#E4007C")
    static let middleBlue = UIColor(hex: "#7ED4E6")
    static let middleBlueGreen = UIColor(hex: "#8DD9CC")
    static let middleBluePurple = UIColor(hex: "#8B72BE")
    static let middleGreen = UIColor(hex: "#4D8C57")
    static let middleGreenYellow = UIColor(hex: "#ACBF60")
    static let middlePurple = UIColor(hex: "#D982B5")
    static let middleRed = UIColor(hex: "#E58E73")
    static let middleRedPurple = UIColor(hex: "#A55353")
    static let middleYellow = UIColor(hex: "#FFEB00")
    static let middleYellowRed = UIColor(hex: "#ECB176")
    static let midnight = UIColor(hex: "#702670")
    static let midnightBlue = UIColor(hex: "#191970")
    static let midnightGreenEagleGreen = UIColor(hex: "#004953")
    static let mikadoYellow = UIColor(hex: "#FFC40C")
    static let milk = UIColor(hex: "#FDFFF5")
    static let mimiPink = UIColor(hex: "#FFDAE9")
    static let mindaro = UIColor(hex: "#E3F988")
    static let ming = UIColor(hex: "#36747D")
    static let minionYellow = UIColor(hex: "#F5E050")
    static let mint = UIColor(hex: "#3EB489")
    static let mintCream = UIColor(hex: "#F5FFFA")
    static let mintGreen = UIColor(hex: "#98FF98")
    static let mistyMoss = UIColor(hex: "#BBB477")
    static let mistyRose = UIColor(hex: "#FFE4E1")
    static let moccasin = UIColor(hex: "#FAEBD7")
    static let modeBeige = UIColor(hex: "#967117")
    static let moonstoneBlue = UIColor(hex: "#73A9C2")
    static let mordantRed19 = UIColor(hex: "#AE0C00")
    static let morningBlue = UIColor(hex: "#8DA399")
    static let mossGreen = UIColor(hex: "#8A9A5B")
    static let mountainMeadow = UIColor(hex: "#30BA8F")
    static let mountbattenPink = UIColor(hex: "#997A8D")
    static let mSUGreen = UIColor(hex: "#18453B")
    static let mughalGreen = UIColor(hex: "#306030")
    static let mulberry = UIColor(hex: "#C54B8C")
    static let mummysTomb = UIColor(hex: "#828E84")
    static let mustard = UIColor(hex: "#FFDB58")
    static let myrtleGreen = UIColor(hex: "#317873")
    static let mystic = UIColor(hex: "#D65282")
    static let mysticMaroon = UIColor(hex: "#AD4379")
    static let nadeshikoPink = UIColor(hex: "#F6ADC6")
    static let napierGreen = UIColor(hex: "#2A8000")
    static let naplesYellow = UIColor(hex: "#FADA5E")
    static let navajoWhite = UIColor(hex: "#FFDEAD")
    static let navy = UIColor(hex: "#000080")
    static let navyPurple = UIColor(hex: "#9457EB")
    static let neonCarrot = UIColor(hex: "#FFA343")
    static let neonFuchsia = UIColor(hex: "#FE4164")
    static let neonGreen = UIColor(hex: "#39FF14")
    static let newCar = UIColor(hex: "#214FC6")
    static let newYorkPink = UIColor(hex: "#D7837F")
    static let nickel = UIColor(hex: "#727472")
    static let nonPhotoBlue = UIColor(hex: "#A4DDED")
    static let northTexasGreen = UIColor(hex: "#059033")
    static let nyanza = UIColor(hex: "#E9FFDB")
    static let oceanBlue = UIColor(hex: "#4F42B5")
    static let oceanBoatBlue = UIColor(hex: "#0077BE")
    static let oceanGreen = UIColor(hex: "#48BF91")
    static let ochre = UIColor(hex: "#CC7722")
    static let officeGreen = UIColor(hex: "#008000")
    static let ogreOdor = UIColor(hex: "#FD5240")
    static let oldBurgundy = UIColor(hex: "#43302E")
    static let oldGold = UIColor(hex: "#CFB53B")
    static let oldHeliotrope = UIColor(hex: "#563C5C")
    static let oldLace = UIColor(hex: "#FDF5E6")
    static let oldLavender = UIColor(hex: "#796878")
    static let oldMauve = UIColor(hex: "#673147")
    static let oldMossGreen = UIColor(hex: "#867E36")
    static let oldRose = UIColor(hex: "#C08081")
    static let oldSilver = UIColor(hex: "#848482")
    static let olive = UIColor(hex: "#808000")
    static let oliveDrab3 = UIColor(hex: "#6B8E23")
    static let oliveDrab7 = UIColor(hex: "#3C341F")
    static let olivine = UIColor(hex: "#9AB973")
    static let onyx = UIColor(hex: "#353839")
    static let operaMauve = UIColor(hex: "#B784A7")
    static let orangeColorWheel = UIColor(hex: "#FF7F00")
    static let orangeCrayola = UIColor(hex: "#FF7538")
    static let orangePantone = UIColor(hex: "#FF5800")
    static let orangeRYB = UIColor(hex: "#FB9902")
    static let orangeWeb = UIColor(hex: "#FFA500")
    static let orangePeel = UIColor(hex: "#FF9F00")
    static let orangeRed = UIColor(hex: "#FF4500")
    static let orangeSoda = UIColor(hex: "#FA5B3D")
    static let orangeYellow = UIColor(hex: "#F8D568")
    static let orchid = UIColor(hex: "#DA70D6")
    static let orchidPink = UIColor(hex: "#F2BDCD")
    static let oriolesOrange = UIColor(hex: "#FB4F14")
    static let otterBrown = UIColor(hex: "#654321")
    static let outerSpace = UIColor(hex: "#414A4C")
    static let outrageousOrange = UIColor(hex: "#FF6E4A")
    static let oxfordBlue = UIColor(hex: "#002147")
    static let oUCrimsonRed = UIColor(hex: "#990000")
    static let pacificBlue = UIColor(hex: "#1CA9C9")
    static let pakistanGreen = UIColor(hex: "#006600")
    static let palatinateBlue = UIColor(hex: "#273BE2")
    static let palatinatePurple = UIColor(hex: "#682860")
    static let paleAqua = UIColor(hex: "#BCD4E6")
    static let paleBlue = UIColor(hex: "#AFEEEE")
    static let paleBrown = UIColor(hex: "#987654")
    static let paleCarmine = UIColor(hex: "#AF4035")
    static let paleCerulean = UIColor(hex: "#9BC4E2")
    static let paleChestnut = UIColor(hex: "#DDADAF")
    static let paleCopper = UIColor(hex: "#DA8A67")
    static let paleCornflowerBlue = UIColor(hex: "#ABCDEF")
    static let paleCyan = UIColor(hex: "#87D3F8")
    static let paleGold = UIColor(hex: "#E6BE8A")
    static let paleGoldenrod = UIColor(hex: "#EEE8AA")
    static let paleGreen = UIColor(hex: "#98FB98")
    static let paleLavender = UIColor(hex: "#DCD0FF")
    static let paleMagenta = UIColor(hex: "#F984E5")
    static let paleMagentaPink = UIColor(hex: "#FF99CC")
    static let palePink = UIColor(hex: "#FADADD")
    static let palePlum = UIColor(hex: "#DDA0DD")
    static let paleRedViolet = UIColor(hex: "#DB7093")
    static let paleRobinEggBlue = UIColor(hex: "#96DED1")
    static let paleSilver = UIColor(hex: "#C9C0BB")
    static let paleSpringBud = UIColor(hex: "#ECEBBD")
    static let paletaupe = UIColor(hex: "#BC987E")
    static let paleturquoise = UIColor(hex: "#AFEEEE")
    static let paleViolet = UIColor(hex: "#CC99FF")
    static let paleVioletRed = UIColor(hex: "#DB7093")
    static let palmLeaf = UIColor(hex: "#6F9940")
    static let pansyPurple = UIColor(hex: "#78184A")
    static let paoloVeroneseGreen = UIColor(hex: "#009B7D")
    static let papayaWhip = UIColor(hex: "#FFEFD5")
    static let paradisePink = UIColor(hex: "#E63E62")
    static let parisGreen = UIColor(hex: "#50C878")
    static let parrotPink = UIColor(hex: "#D998A0")
    static let pastelBlue = UIColor(hex: "#AEC6CF")
    static let pastelBrown = UIColor(hex: "#836953")
    static let pastelGray = UIColor(hex: "#CFCFC4")
    static let pastelGreen = UIColor(hex: "#77DD77")
    static let pastelMagenta = UIColor(hex: "#F49AC2")
    static let pastelOrange = UIColor(hex: "#FFB347")
    static let pastelPink = UIColor(hex: "#DEA5A4")
    static let pastelPurple = UIColor(hex: "#B39EB5")
    static let pastelRed = UIColor(hex: "#FF6961")
    static let pastelViolet = UIColor(hex: "#CB99C9")
    static let pastelYellow = UIColor(hex: "#FDFD96")
    static let patriarch = UIColor(hex: "#800080")
    static let paynesGrey = UIColor(hex: "#536878")
    static let peach = UIColor(hex: "#FFE5B4")
    static let peachOrange = UIColor(hex: "#FFCC99")
    static let peachPuff = UIColor(hex: "#FFDAB9")
    static let peachYellow = UIColor(hex: "#FADFAD")
    static let pear = UIColor(hex: "#D1E231")
    static let pearl = UIColor(hex: "#EAE0C8")
    static let pearlAqua = UIColor(hex: "#88D8C0")
    static let pearlyPurple = UIColor(hex: "#B768A2")
    static let peridot = UIColor(hex: "#E6E200")
    static let periwinkle = UIColor(hex: "#CCCCFF")
    static let permanentGeraniumLake = UIColor(hex: "#E12C2C")
    static let persianBlue = UIColor(hex: "#1C39BB")
    static let persianGreen = UIColor(hex: "#00A693")
    static let persianIndigo = UIColor(hex: "#32127A")
    static let persianOrange = UIColor(hex: "#D99058")
    static let persianPink = UIColor(hex: "#F77FBE")
    static let persianPlum = UIColor(hex: "#701C1C")
    static let persianRed = UIColor(hex: "#CC3333")
    static let persianRose = UIColor(hex: "#FE28A2")
    static let persimmon = UIColor(hex: "#EC5800")
    static let peru = UIColor(hex: "#CD853F")
    static let pewterBlue = UIColor(hex: "#8BA8B7")
    static let phlox = UIColor(hex: "#DF00FF")
    static let phthaloBlue = UIColor(hex: "#000F89")
    static let phthaloGreen = UIColor(hex: "#123524")
    static let pictonBlue = UIColor(hex: "#45B1E8")
    static let pictorialCarmine = UIColor(hex: "#C30B4E")
    static let piggyPink = UIColor(hex: "#FDDDE6")
    static let pineGreen = UIColor(hex: "#01796F")
    static let pineapple = UIColor(hex: "#563C5C")
    static let pink = UIColor(hex: "#FFC0CB")
    static let pinkPantone = UIColor(hex: "#D74894")
    static let pinkFlamingo = UIColor(hex: "#FC74FD")
    static let pinkLace = UIColor(hex: "#FFDDF4")
    static let pinkLavender = UIColor(hex: "#D8B2D1")
    static let pinkOrange = UIColor(hex: "#FF9966")
    static let pinkPearl = UIColor(hex: "#E7ACCF")
    static let pinkRaspberry = UIColor(hex: "#980036")
    static let pinkSherbet = UIColor(hex: "#F78FA7")
    static let pistachio = UIColor(hex: "#93C572")
    static let pixiePowder = UIColor(hex: "#391285")
    static let platinum = UIColor(hex: "#E5E4E2")
    static let plum = UIColor(hex: "#8E4585")
    static let plumWeb = UIColor(hex: "#DDA0DD")
    static let plumpPurple = UIColor(hex: "#5946B2")
    static let polishedPine = UIColor(hex: "#5DA493")
    static let pompAndPower = UIColor(hex: "#86608E")
    static let popstar = UIColor(hex: "#BE4F62")
    static let portlandOrange = UIColor(hex: "#FF5A36")
    static let powderBlue = UIColor(hex: "#B0E0E6")
    static let princessPerfume = UIColor(hex: "#FF85CF")
    static let princetonOrange = UIColor(hex: "#F58025")
    static let prune = UIColor(hex: "#701C1C")
    static let prussianBlue = UIColor(hex: "#003153")
    static let psychedelicPurple = UIColor(hex: "#DF00FF")
    static let puce = UIColor(hex: "#CC8899")
    static let puceRed = UIColor(hex: "#722F37")
    static let pullmanBrownUPSBrown = UIColor(hex: "#644117")
    static let pullmanGreen = UIColor(hex: "#3B331C")
    static let pumpkin = UIColor(hex: "#FF7518")
    static let purpleHTML = UIColor(hex: "#800080")
    static let purpleMunsell = UIColor(hex: "#9F00C5")
    static let purpleX11 = UIColor(hex: "#A020F0")
    static let purpleHeart = UIColor(hex: "#69359C")
    static let purpleMountainMajesty = UIColor(hex: "#9678B6")
    static let purpleNavy = UIColor(hex: "#4E5180")
    static let purplePizzazz = UIColor(hex: "#FE4EDA")
    static let purplePlum = UIColor(hex: "#9C51B6")
    static let purpletaupe = UIColor(hex: "#50404D")
    static let purpureus = UIColor(hex: "#9A4EAE")
    static let quartz = UIColor(hex: "#51484F")
    static let queenBlue = UIColor(hex: "#436B95")
    static let queenPink = UIColor(hex: "#E8CCD7")
    static let quickSilver = UIColor(hex: "#A6A6A6")
    static let quinacridoneMagenta = UIColor(hex: "#8E3A59")
    static let rackley = UIColor(hex: "#5D8AA8")
    static let radicalRed = UIColor(hex: "#FF355E")
    static let raisinBlack = UIColor(hex: "#242124")
    static let rajah = UIColor(hex: "#FBAB60")
    static let raspberry = UIColor(hex: "#E30B5D")
    static let raspberryGlace = UIColor(hex: "#915F6D")
    static let raspberryPink = UIColor(hex: "#E25098")
    static let raspberryRose = UIColor(hex: "#B3446C")
    static let rawSienna = UIColor(hex: "#D68A59")
    static let rawUmber = UIColor(hex: "#826644")
    static let razzleDazzleRose = UIColor(hex: "#FF33CC")
    static let razzmatazz = UIColor(hex: "#E3256B")
    static let razzmicBerry = UIColor(hex: "#8D4E85")
    static let rebeccaPurple = UIColor(hex: "#663399")
    static let red = UIColor(hex: "#FF0000")
    static let redCrayola = UIColor(hex: "#EE204D")
    static let redMunsell = UIColor(hex: "#F2003C")
    static let redNCS = UIColor(hex: "#C40233")
    static let redPantone = UIColor(hex: "#ED2939")
    static let redPigment = UIColor(hex: "#ED1C24")
    static let redRYB = UIColor(hex: "#FE2712")
    static let redBrown = UIColor(hex: "#A52A2A")
    static let redDevil = UIColor(hex: "#860111")
    static let redOrange = UIColor(hex: "#FF5349")
    static let redPurple = UIColor(hex: "#E40078")
    static let redSalsa = UIColor(hex: "#FD3A4A")
    static let redViolet = UIColor(hex: "#C71585")
    static let redwood = UIColor(hex: "#A45A52")
    static let regalia = UIColor(hex: "#522D80")
    static let registrationBlack = UIColor(hex: "#000000")
    static let resolutionBlue = UIColor(hex: "#002387")
    static let rhythm = UIColor(hex: "#777696")
    static let richBlack = UIColor(hex: "#004040")
    static let richBlackFOGRA29 = UIColor(hex: "#010B13")
    static let richBlackFOGRA39 = UIColor(hex: "#010203")
    static let richBrilliantLavender = UIColor(hex: "#F1A7FE")
    static let richCarmine = UIColor(hex: "#D70040")
    static let richElectricBlue = UIColor(hex: "#0892D0")
    static let richLavender = UIColor(hex: "#A76BCF")
    static let richLilac = UIColor(hex: "#B666D2")
    static let richMaroon = UIColor(hex: "#B03060")
    static let rifleGreen = UIColor(hex: "#444C38")
    static let roastCoffee = UIColor(hex: "#704241")
    static let robinEggBlue = UIColor(hex: "#00CCCC")
    static let rocketMetallic = UIColor(hex: "#8A7F80")
    static let romanSilver = UIColor(hex: "#838996")
    static let rose = UIColor(hex: "#FF007F")
    static let roseBonbon = UIColor(hex: "#F9429E")
    static let roseDust = UIColor(hex: "#9E5E6F")
    static let roseEbony = UIColor(hex: "#674846")
    static let roseGold = UIColor(hex: "#B76E79")
    static let roseMadder = UIColor(hex: "#E32636")
    static let rosePink = UIColor(hex: "#FF66CC")
    static let roseQuartz = UIColor(hex: "#AA98A9")
    static let roseRed = UIColor(hex: "#C21E56")
    static let roseTaupe = UIColor(hex: "#905D5D")
    static let roseVale = UIColor(hex: "#AB4E52")
    static let rosewood = UIColor(hex: "#65000B")
    static let rossoCorsa = UIColor(hex: "#D40000")
    static let rosyBrown = UIColor(hex: "#BC8F8F")
    static let royalAzure = UIColor(hex: "#0038A8")
    static let royalBlue = UIColor(hex: "#002366")
    static let royalFuchsia = UIColor(hex: "#CA2C92")
    static let royalPurple = UIColor(hex: "#7851A9")
    static let royalYellow = UIColor(hex: "#FADA5E")
    static let ruber = UIColor(hex: "#CE4676")
    static let rubineRed = UIColor(hex: "#D10056")
    static let ruby = UIColor(hex: "#E0115F")
    static let rubyRed = UIColor(hex: "#9B111E")
    static let ruddy = UIColor(hex: "#FF0028")
    static let ruddyBrown = UIColor(hex: "#BB6528")
    static let ruddyPink = UIColor(hex: "#E18E96")
    static let rufous = UIColor(hex: "#A81C07")
    static let russet = UIColor(hex: "#80461B")
    static let russianGreen = UIColor(hex: "#679267")
    static let russianViolet = UIColor(hex: "#32174D")
    static let rust = UIColor(hex: "#B7410E")
    static let rustyRed = UIColor(hex: "#DA2C43")
    static let sacramentoStateGreen = UIColor(hex: "#00563F")
    static let saddleBrown = UIColor(hex: "#8B4513")
    static let safetyOrange = UIColor(hex: "#FF7800")
    static let safetyOrangeBlazeOrange = UIColor(hex: "#FF6700")
    static let safetyYellow = UIColor(hex: "#EED202")
    static let saffron = UIColor(hex: "#F4C430")
    static let sage = UIColor(hex: "#BCB88A")
    static let stPatricksBlue = UIColor(hex: "#23297A")
    static let salmon = UIColor(hex: "#FA8072")
    static let salmonPink = UIColor(hex: "#FF91A4")
    static let sand = UIColor(hex: "#C2B280")
    static let sandDune = UIColor(hex: "#967117")
    static let sandstorm = UIColor(hex: "#ECD540")
    static let sandyBrown = UIColor(hex: "#F4A460")
    static let sandyTan = UIColor(hex: "#FDD9B5")
    static let sandyTaupe = UIColor(hex: "#967117")
    static let sangria = UIColor(hex: "#92000A")
    static let sapGreen = UIColor(hex: "#507D2A")
    static let sapphire = UIColor(hex: "#0F52BA")
    static let sapphireBlue = UIColor(hex: "#0067A5")
    static let sasquatchSocks = UIColor(hex: "#FF4681")
    static let satinSheenGold = UIColor(hex: "#CBA135")
    static let scarlet = UIColor(hex: "#FF2400")
    static let schaussPink = UIColor(hex: "#FF91AF")
    static let schoolBusYellow = UIColor(hex: "#FFD800")
    static let screaminGreen = UIColor(hex: "#66FF66")
    static let seaBlue = UIColor(hex: "#006994")
    static let seaFoamGreen = UIColor(hex: "#9FE2BF")
    static let seaGreen = UIColor(hex: "#2E8B57")
    static let seaSerpent = UIColor(hex: "#4BC7CF")
    static let sealBrown = UIColor(hex: "#59260B")
    static let seashell = UIColor(hex: "#FFF5EE")
    static let selectiveYellow = UIColor(hex: "#FFBA00")
    static let sepia = UIColor(hex: "#704214")
    static let shadow = UIColor(hex: "#8A795D")
    static let shadowBlue = UIColor(hex: "#778BA5")
    static let shampoo = UIColor(hex: "#FFCFF1")
    static let shamrockGreen = UIColor(hex: "#009E60")
    static let sheenGreen = UIColor(hex: "#8FD400")
    static let shimmeringBlush = UIColor(hex: "#D98695")
    static let shinyShamrock = UIColor(hex: "#5FA778")
    static let shockingPink = UIColor(hex: "#FC0FC0")
    static let shockingPinkCrayola = UIColor(hex: "#FF6FFF")
    static let sienna = UIColor(hex: "#882D17")
    static let silver = UIColor(hex: "#C0C0C0")
    static let silverChalice = UIColor(hex: "#ACACAC")
    static let silverLakeBlue = UIColor(hex: "#5D89BA")
    static let silverPink = UIColor(hex: "#C4AEAD")
    static let silverSand = UIColor(hex: "#BFC1C2")
    static let sinopia = UIColor(hex: "#CB410B")
    static let sizzlingRed = UIColor(hex: "#FF3855")
    static let sizzlingSunrise = UIColor(hex: "#FFDB00")
    static let skobeloff = UIColor(hex: "#007474")
    static let skyBlue = UIColor(hex: "#87CEEB")
    static let skyMagenta = UIColor(hex: "#CF71AF")
    static let slateBlue = UIColor(hex: "#6A5ACD")
    static let slateGray = UIColor(hex: "#708090")
    static let smaltDarkPowderBlue = UIColor(hex: "#003399")
    static let slimyGreen = UIColor(hex: "#299617")
    static let smashedPumpkin = UIColor(hex: "#FF6D3A")
    static let smitten = UIColor(hex: "#C84186")
    static let smoke = UIColor(hex: "#738276")
    static let smokeyTopaz = UIColor(hex: "#832A0D")
    static let smokyBlack = UIColor(hex: "#100C08")
    static let smokyTopaz = UIColor(hex: "#933D41")
    static let snow = UIColor(hex: "#FFFAFA")
    static let soap = UIColor(hex: "#CEC8EF")
    static let solidPink = UIColor(hex: "#893843")
    static let sonicSilver = UIColor(hex: "#757575")
    static let spartanCrimson = UIColor(hex: "#9E1316")
    static let spaceCadet = UIColor(hex: "#1D2951")
    static let spanishBistre = UIColor(hex: "#807532")
    static let spanishBlue = UIColor(hex: "#0070B8")
    static let spanishCarmine = UIColor(hex: "#D10047")
    static let spanishCrimson = UIColor(hex: "#E51A4C")
    static let spanishGray = UIColor(hex: "#989898")
    static let spanishGreen = UIColor(hex: "#009150")
    static let spanishOrange = UIColor(hex: "#E86100")
    static let spanishPink = UIColor(hex: "#F7BFBE")
    static let spanishRed = UIColor(hex: "#E60026")
    static let spanishSkyBlue = UIColor(hex: "#00FFFF")
    static let spanishViolet = UIColor(hex: "#4C2882")
    static let spanishViridian = UIColor(hex: "#007F5C")
    static let spicyMix = UIColor(hex: "#8B5f4D")
    static let spiroDiscoBall = UIColor(hex: "#0FC0FC")
    static let springBud = UIColor(hex: "#A7FC00")
    static let springFrost = UIColor(hex: "#87FF2A")
    static let springGreen = UIColor(hex: "#00FF7F")
    static let starCommandBlue = UIColor(hex: "#007BB8")
    static let steelBlue = UIColor(hex: "#4682B4")
    static let steelPink = UIColor(hex: "#CC33CC")
    static let steelTeal = UIColor(hex: "#5F8A8B")
    static let stilDeGrainYellow = UIColor(hex: "#FADA5E")
    static let stizza = UIColor(hex: "#990000")
    static let stormcloud = UIColor(hex: "#4F666A")
    static let straw = UIColor(hex: "#E4D96F")
    static let strawberry = UIColor(hex: "#FC5A8D")
    static let sugarPlum = UIColor(hex: "#914E75")
    static let sunburntCyclops = UIColor(hex: "#FF404C")
    static let sunglow = UIColor(hex: "#FFCC33")
    static let sunny = UIColor(hex: "#F2F27A")
    static let sunray = UIColor(hex: "#E3AB57")
    static let sunset = UIColor(hex: "#FAD6A5")
    static let sunsetOrange = UIColor(hex: "#FD5E53")
    static let superPink = UIColor(hex: "#CF6BA9")
    static let sweetBrown = UIColor(hex: "#A83731")
    static let tan = UIColor(hex: "#D2B48C")
    static let tangelo = UIColor(hex: "#F94D00")
    static let tangerine = UIColor(hex: "#F28500")
    static let tangerineYellow = UIColor(hex: "#FFCC00")
    static let tangoPink = UIColor(hex: "#E4717A")
    static let tartOrange = UIColor(hex: "#FB4D46")
    static let taupe = UIColor(hex: "#483C32")
    static let taupeGray = UIColor(hex: "#8B8589")
    static let teaGreen = UIColor(hex: "#D0F0C0")
    static let teaRose = UIColor(hex: "#F88379")
    static let teal = UIColor(hex: "#008080")
    static let tealBlue = UIColor(hex: "#367588")
    static let tealDeer = UIColor(hex: "#99E6B3")
    static let tealGreen = UIColor(hex: "#00827F")
    static let telemagenta = UIColor(hex: "#CF3476")
    static let tenneTawny = UIColor(hex: "#CD5700")
    static let terraCotta = UIColor(hex: "#E2725B")
    static let thistle = UIColor(hex: "#D8BFD8")
    static let thulianPink = UIColor(hex: "#DE6FA1")
    static let tickleMePink = UIColor(hex: "#FC89AC")
    static let tiffanyBlue = UIColor(hex: "#0ABAB5")
    static let tigersEye = UIColor(hex: "#E08D3C")
    static let timberwolf = UIColor(hex: "#DBD7D2")
    static let titaniumYellow = UIColor(hex: "#EEE600")
    static let tomato = UIColor(hex: "#FF6347")
    static let toolbox = UIColor(hex: "#746CC0")
    static let topaz = UIColor(hex: "#FFC87C")
    static let tractorRed = UIColor(hex: "#FD0E35")
    static let trolleyGrey = UIColor(hex: "#808080")
    static let tropicalRainForest = UIColor(hex: "#00755E")
    static let tropicalViolet = UIColor(hex: "#CDA4DE")
    static let trueBlue = UIColor(hex: "#0073CF")
    static let tuftsBlue = UIColor(hex: "#3E8EDE")
    static let tulip = UIColor(hex: "#FF878D")
    static let tumbleweed = UIColor(hex: "#DEAA88")
    static let turkishRose = UIColor(hex: "#B57281")
    static let turquoise = UIColor(hex: "#40E0D0")
    static let turquoiseBlue = UIColor(hex: "#00FFEF")
    static let turquoiseGreen = UIColor(hex: "#A0D6B4")
    static let turquoiseSurf = UIColor(hex: "#00C5CD")
    static let turtleGreen = UIColor(hex: "#8A9A5B")
    static let tuscan = UIColor(hex: "#FAD6A5")
    static let tuscanBrown = UIColor(hex: "#6F4E37")
    static let tuscanRed = UIColor(hex: "#7C4848")
    static let tuscanTan = UIColor(hex: "#A67B5B")
    static let tuscany = UIColor(hex: "#C09999")
    static let twilightLavender = UIColor(hex: "#8A496B")
    static let tyrianPurple = UIColor(hex: "#66023C")
    static let uABlue = UIColor(hex: "#0033AA")
    static let uARed = UIColor(hex: "#D9004C")
    static let ube = UIColor(hex: "#8878C3")
    static let uCLABlue = UIColor(hex: "#536895")
    static let uCLAGold = UIColor(hex: "#FFB300")
    static let uFOGreen = UIColor(hex: "#3CD070")
    static let ultramarine = UIColor(hex: "#3F00FF")
    static let ultramarineBlue = UIColor(hex: "#4166F5")
    static let ultraPink = UIColor(hex: "#FF6FFF")
    static let ultraRed = UIColor(hex: "#FC6C85")
    static let umber = UIColor(hex: "#635147")
    static let unbleachedSilk = UIColor(hex: "#FFDDCA")
    static let unitedNationsBlue = UIColor(hex: "#5B92E5")
    static let universityOfCaliforniaGold = UIColor(hex: "#B78727")
    static let unmellowYellow = UIColor(hex: "#FFFF66")
    static let uPForestGreen = UIColor(hex: "#014421")
    static let uPMaroon = UIColor(hex: "#7B1113")
    static let upsdellRed = UIColor(hex: "#AE2029")
    static let urobilin = UIColor(hex: "#E1AD21")
    static let uSAFABlue = UIColor(hex: "#004F98")
    static let uSCCardinal = UIColor(hex: "#990000")
    static let uSCGold = UIColor(hex: "#FFCC00")
    static let universityOfTennesseeOrange = UIColor(hex: "#F77F00")
    static let utahCrimson = UIColor(hex: "#D3003F")
    static let vanDykeBrown = UIColor(hex: "#664228")
    static let vanilla = UIColor(hex: "#F3E5AB")
    static let vanillaIce = UIColor(hex: "#F38FA9")
    static let vegasGold = UIColor(hex: "#C5B358")
    static let venetianRed = UIColor(hex: "#C80815")
    static let verdigris = UIColor(hex: "#43B3AE")
    static let vermilion = UIColor(hex: "#E34234")
    static let veronica = UIColor(hex: "#A020F0")
    static let veryLightAzure = UIColor(hex: "#74BBFB")
    static let veryLightBlue = UIColor(hex: "#6666FF")
    static let veryLightMalachiteGreen = UIColor(hex: "#64E986")
    static let veryLightTangelo = UIColor(hex: "#FFB077")
    static let veryPaleOrange = UIColor(hex: "#FFDFBF")
    static let veryPaleYellow = UIColor(hex: "#FFFFBF")
    static let violet = UIColor(hex: "#8F00FF")
    static let violetColorWheel = UIColor(hex: "#7F00FF")
    static let violetRYB = UIColor(hex: "#8601AF")
    static let violetWeb = UIColor(hex: "#EE82EE")
    static let violetBlue = UIColor(hex: "#324AB2")
    static let violetRed = UIColor(hex: "#F75394")
    static let viridian = UIColor(hex: "#40826D")
    static let viridianGreen = UIColor(hex: "#009698")
    static let vistaBlue = UIColor(hex: "#7C9ED9")
    static let vividAmber = UIColor(hex: "#CC9900")
    static let vividAuburn = UIColor(hex: "#922724")
    static let vividBurgundy = UIColor(hex: "#9F1D35")
    static let vividCerise = UIColor(hex: "#DA1D81")
    static let vividCerulean = UIColor(hex: "#00AAEE")
    static let vividCrimson = UIColor(hex: "#CC0033")
    static let vividGamboge = UIColor(hex: "#FF9900")
    static let vividLimeGreen = UIColor(hex: "#A6D608")
    static let vividMalachite = UIColor(hex: "#00CC33")
    static let vividMulberry = UIColor(hex: "#B80CE3")
    static let vividOrange = UIColor(hex: "#FF5F00")
    static let vividOrangePeel = UIColor(hex: "#FFA000")
    static let vividOrchid = UIColor(hex: "#CC00FF")
    static let vividRaspberry = UIColor(hex: "#FF006C")
    static let vividRed = UIColor(hex: "#F70D1A")
    static let vividRedTangelo = UIColor(hex: "#DF6124")
    static let vividSkyBlue = UIColor(hex: "#00CCFF")
    static let vividTangelo = UIColor(hex: "#F07427")
    static let vividTangerine = UIColor(hex: "#FFA089")
    static let vividVermilion = UIColor(hex: "#E56024")
    static let vividViolet = UIColor(hex: "#9F00FF")
    static let vividYellow = UIColor(hex: "#FFE302")
    static let volt = UIColor(hex: "#CEFF00")
    static let wageningenGreen = UIColor(hex: "#34B233")
    static let warmBlack = UIColor(hex: "#004242")
    static let waterspout = UIColor(hex: "#A4F4F9")
    static let weldonBlue = UIColor(hex: "#7C98AB")
    static let wenge = UIColor(hex: "#645452")
    static let wheat = UIColor(hex: "#F5DEB3")
    static let white = UIColor(hex: "#FFFFFF")
    static let whiteSmoke = UIColor(hex: "#F5F5F5")
    static let wildBlueYonder = UIColor(hex: "#A2ADD0")
    static let wildOrchid = UIColor(hex: "#D470A2")
    static let wildStrawberry = UIColor(hex: "#FF43A4")
    static let wildWatermelon = UIColor(hex: "#FC6C85")
    static let willpowerOrange = UIColor(hex: "#FD5800")
    static let windsorTan = UIColor(hex: "#A75502")
    static let wine = UIColor(hex: "#722F37")
    static let wineDregs = UIColor(hex: "#673147")
    static let winterSky = UIColor(hex: "#FF007C")
    static let winterWizard = UIColor(hex: "#A0E6FF")
    static let wintergreenDream = UIColor(hex: "#56887D")
    static let wisteria = UIColor(hex: "#C9A0DC")
    static let woodBrown = UIColor(hex: "#C19A6B")
    static let xanadu = UIColor(hex: "#738678")
    static let yaleBlue = UIColor(hex: "#0F4D92")
    static let yankeesBlue = UIColor(hex: "#1C2841")
    static let yellow = UIColor(hex: "#FFFF00")
    static let yellowCrayola = UIColor(hex: "#FCE883")
    static let yellowMunsell = UIColor(hex: "#EFCC00")
    static let yellowNCS = UIColor(hex: "#FFD300")
    static let yellowPantone = UIColor(hex: "#FEDF00")
    static let yellowProcess = UIColor(hex: "#FFEF00")
    static let yellowRYB = UIColor(hex: "#FEFE33")
    static let yellowGreen = UIColor(hex: "#9ACD32")
    static let yellowOrange = UIColor(hex: "#FFAE42")
    static let yellowRose = UIColor(hex: "#FFF000")
    static let yellowSunshine = UIColor(hex: "#FFF700")
    static let zaffre = UIColor(hex: "#0014A8")
    static let zinnwalditeBrown = UIColor(hex: "#2C1608")
    static let zomp = UIColor(hex: "#39A78E")
}
//
//  CameraViewController.swift
//  HOMEPOK - Catalog of Ukrainian vehicle plates
//
//  Created by Alexander Iashchuk on 11/8/16.
//  Copyright © 2015 Alexander Iashchuk (iAlexander), https://iashchuk.com
//
//  This application is released under the MIT license. All rights reserved.
//

import UIKit
import AVFoundation
import Photos
import Speech

class CameraViewController: UIViewController, AVCaptureFileOutputRecordingDelegate, CLLocationManagerDelegate, SFSpeechRecognizerDelegate {
    
    // MARK: Constants and variables declaration
    
    let defaults = UserDefaults.standard
    var videosArray: [String] = Array()
    let savedVideosArrayKey = "savedVideosArray"
    let locationManager = CLLocationManager()
    
    // MARK: Speech recognition settings
    
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()
    var speechArray: [String] = Array()
    let savedSpeechArrayKey = "savedSpeechArray"
    @IBOutlet weak var recognizedTextLabel: UILabel!
    
    // Change the speech recognition language here
    
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: "en"))
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //        if let location = locations.first {
        //            print("Found user's location: \(location)")
        //        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Failed to find current user's location: \(error.localizedDescription)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestLocation()
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
        
        let cameraViewSize = CGRect(x: 0, y: 0, width: 375, height: 667)
        previewView.frame = cameraViewSize
        previewView.updateConstraintsIfNeeded()
        
        // Disable UI. The UI is enabled if and only if the session starts running.
        
        cameraButton.isEnabled = false
        recordButton.isEnabled = false
        
        // Set up the video preview view.
        
        previewView.session = session
        
        /*
         Check video authorization status. Video access is required and audio
         access is optional. If audio access is denied, audio is not recorded
         during movie recording.
         */
        
        // MARK: Request video recording authorization
        
        switch AVCaptureDevice.authorizationStatus(forMediaType: AVMediaTypeVideo) {
        case .authorized:
            
            // The user has previously granted access to the camera.
            
            break
            
        case .notDetermined:
            
            /*
             The user has not yet been presented with the option to grant
             video access. We suspend the session queue to delay session
             setup until the access request has completed.
             
             Note that audio access will be implicitly requested when we
             create an AVCaptureDeviceInput for audio during session setup.
             */
            
            sessionQueue.suspend()
            AVCaptureDevice.requestAccess(forMediaType: AVMediaTypeVideo, completionHandler: { [unowned self] granted in
                if !granted {
                    self.setupResult = .notAuthorized
                }
                self.sessionQueue.resume()
            })
            
        default:
            // The user has previously denied access.
            setupResult = .notAuthorized
        }
        
        /*
         Setup the capture session.
         In general it is not safe to mutate an AVCaptureSession or any of its
         inputs, outputs, or connections from multiple threads at the same time.
         
         Why not do all of this on the main queue?
         Because AVCaptureSession.startRunning() is a blocking call which can
         take a long time. We dispatch session setup to the sessionQueue so
         that the main queue isn't blocked, which keeps the UI responsive.
         */
        
        sessionQueue.async { [unowned self] in
            self.configureSession()
        }
        
        // MARK: Request speech recognition authorization
        
        SFSpeechRecognizer.requestAuthorization { (authStatus) in
            
            switch authStatus {
            case .authorized:
                print("User granted access to speech recognition")
                //                isButtonEnabled = true
                
            case .denied:
                //                isButtonEnabled = false
                print("User denied access to speech recognition")
                
            case .restricted:
                //                isButtonEnabled = false
                print("Speech recognition restricted on this device")
                
            case .notDetermined:
                //                isButtonEnabled = false
                print("Speech recognition not yet authorized")
            }
            
            //            OperationQueue.main.addOperation() {
            //                self.microphoneButton.isEnabled = isButtonEnabled
            //            }
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let cameraViewSize = CGRect(x: 0, y: 0, width: 375, height: 667)
        previewView.frame = cameraViewSize
        previewView.updateConstraintsIfNeeded()
        
        sessionQueue.async {
            switch self.setupResult {
            case .success:
                
                // Only setup observers and start the session running if setup succeeded.
                
                self.addObservers()
                self.session.startRunning()
                self.isSessionRunning = self.session.isRunning
                
            case .notAuthorized:
                DispatchQueue.main.async { [unowned self] in
                    let message = NSLocalizedString("AVCam doesn't have permission to use the camera, please change privacy settings", comment: "Alert message when the user has denied access to the camera")
                    let alertController = UIAlertController(title: "AVCam", message: message, preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Alert OK button"), style: .cancel, handler: nil))
                    alertController.addAction(UIAlertAction(title: NSLocalizedString("Settings", comment: "Alert button to open Settings"), style: .`default`, handler: { action in
                        UIApplication.shared.open(URL(string: UIApplicationOpenSettingsURLString)!, options: [:], completionHandler: nil)
                    }))
                    
                    self.present(alertController, animated: true, completion: nil)
                }
                
            case .configurationFailed:
                DispatchQueue.main.async { [unowned self] in
                    let message = NSLocalizedString("Unable to capture media", comment: "Alert message when something goes wrong during capture session configuration")
                    let alertController = UIAlertController(title: "AVCam", message: message, preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Alert OK button"), style: .cancel, handler: nil))
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if audioEngine.isRunning {
            self.stopRecordingSpeech()
        }
        sessionQueue.async { [unowned self] in
            if self.setupResult == .success {
                self.session.stopRunning()
                self.isSessionRunning = self.session.isRunning
                self.removeObservers()
                self.locationManager.stopUpdatingLocation()
            }
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        UIDevice.current.setValue(Int(UIInterfaceOrientation.portrait.rawValue), forKey: "orientation")
    }
    
    func canRotate() {}
    
    override var shouldAutorotate: Bool {
        
        // Disable autorotation of the interface when recording is in progress.
        
        if let movieFileOutput = movieFileOutput {
            return !movieFileOutput.isRecording
        }
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .all
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        if let videoPreviewLayerConnection = previewView.videoPreviewLayer.connection {
            let deviceOrientation = UIDevice.current.orientation
            guard let newVideoOrientation = deviceOrientation.videoOrientation, deviceOrientation.isPortrait || deviceOrientation.isLandscape else {
                return
            }
            
            videoPreviewLayerConnection.videoOrientation = newVideoOrientation
        }
    }
    
    // MARK: Infinite speech recognition helpers.
    
    var recognizedText = ""
    var recognizedTextArray = [String]()
    var count = -1
    var continueSpeechRecognition = true
    
    // MARK: Speech recognition function.
    
    func startRecordingSpeech() {
        self.recognizedTextLabel.text = "…text recognized from speech is displayed here…"
        self.recognizedTextLabel.isHidden = false
        self.count = -1
        self.recognizedTextArray = [""]
        startRecording()
        print("Started speech recognition")
    }
    
    func stopRecordingSpeech() {
        print("Finished speech recognition")
        self.recognizedTextLabel.isHidden = true
        self.continueSpeechRecognition = false
        self.audioEngine.stop()
        self.recognitionRequest?.endAudio()
        if !self.recognizedTextArray.isEmpty {
            self.recognizedText = self.recognizedTextArray[0]
            for item in self.recognizedTextArray {
                if self.recognizedText != item {
                    if item != "" {
                        self.recognizedText = self.recognizedText + "\n" + item
                    }
                }
            }
        } else {
            self.recognizedText = "Ooops... We are sorry, but Siri could not recognize the speech. It can happen because of not using English language or your really poor internet connection..."
        }
        if self.recognizedText == "" {
            self.recognizedText = "Ooops... We are sorry, but Siri could not recognize the speech. It can happen because of not using English language or your really poor internet connection..."
        }
        print("Recognized text:\n\(self.recognizedText)")
        
        if self.defaults.array(forKey: self.savedSpeechArrayKey) != nil {
            self.speechArray = self.defaults.array(forKey: self.savedSpeechArrayKey) as! [String]
        }
        
        self.speechArray.append(self.recognizedText)
        self.defaults.set(self.speechArray, forKey: self.savedSpeechArrayKey)
    }
    
    func startRecording() {
        self.continueSpeechRecognition = true
        self.count += 1
        print("COUNT: \(self.count)")
        if self.count > 0 {
            self.recognizedTextArray.append("")
        }
        print("Recognized text array:\n\(self.recognizedTextArray)")
        
        if recognitionTask != nil {
            recognitionTask?.cancel()
            recognitionTask = nil
        }
        
        //        let audioSession = AVAudioSession.sharedInstance()
        //        do {
        //            try audioSession.setCategory(AVAudioSessionCategoryRecord)
        //            try audioSession.setMode(AVAudioSessionModeMeasurement)
        //            try audioSession.setActive(true, with: .notifyOthersOnDeactivation)
        //        } catch {
        //            print("audioSession properties weren't set because of an error.")
        //        }
        
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        
        guard let inputNode = audioEngine.inputNode else {
            fatalError("Audio engine has no input node")
        }
        
        guard let recognitionRequest = recognitionRequest else {
            fatalError("Unable to create an SFSpeechAudioBufferRecognitionRequest object")
        }
        
        recognitionRequest.shouldReportPartialResults = true
        
        recognitionTask = speechRecognizer?.recognitionTask(with: recognitionRequest, resultHandler: { (result, error) in
            
            var isFinal = false
            
            if result != nil {
                self.recognizedTextArray[self.count] = (result?.bestTranscription.formattedString)!
                print("Recognized part of text -> \(self.recognizedTextArray[self.count])")
                self.recognizedTextLabel.text = self.recognizedTextArray[self.count]
                isFinal = (result?.isFinal)!
            }
            
            if error != nil || isFinal {
                print("Recognition ERROR: \(error)")
                print("Recognition ISFINAL: \(isFinal)")
                self.audioEngine.stop()
                inputNode.removeTap(onBus: 0)
                
                self.recognitionRequest = nil
                self.recognitionTask = nil
                
                if self.recognizedTextArray[self.count].isEmpty {
                    if self.count > 0 {
                        self.recognizedTextArray.remove(at: self.count)
                    } else {
                        self.recognizedTextArray[self.count] = ""
                    }
                    self.count -= 1
                    if self.continueSpeechRecognition {
                        print("Program started speech recognition (TOP)")
                        self.startRecording()
                    }
                    return
                }
                if self.continueSpeechRecognition {
                    print("Program started speech recognition (BOTTOM)")
                    self.startRecording()
                }
            }
        })
        
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer, when) in
            self.recognitionRequest?.append(buffer)
        }
        
        audioEngine.prepare()
        
        do {
            try audioEngine.start()
        } catch {
            print("audioEngine couldn't start because of an error.")
        }
    }
    
    func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool) {
        if available {
            print("Speech recognizer is enabled")
        } else {
            print("Speech recognizer is disabled")
        }
    }
    
    // Mark: Timer
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var startTime = TimeInterval()
    
    var timer:Timer = Timer()
    
    func startTimer() {
        if (!timer.isValid) {
            let aSelector : Selector = #selector(CameraViewController.updateTime)
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: aSelector, userInfo: nil, repeats: true)
            startTime = NSDate.timeIntervalSinceReferenceDate
        }
    }
    
    func stopTimer() {
        timer.invalidate()
    }
    
    func updateTime() {
        let currentTime = NSDate.timeIntervalSinceReferenceDate
        
        //Find the difference between current time and start time.
        
        var elapsedTime: TimeInterval = currentTime - startTime
        
        //calculate the minutes in elapsed time.
        
        let minutes = UInt8(elapsedTime / 60.0)
        elapsedTime -= (TimeInterval(minutes) * 60)
        
        //calculate the seconds in elapsed time.
        
        let seconds = UInt8(elapsedTime)
        elapsedTime -= TimeInterval(seconds)
        
        //find out the fraction of milliseconds to be displayed.
        
        // let fraction = UInt8(elapsedTime * 100)
        
        //add the leading zero for minutes, seconds and millseconds and store them as string constants
        
        let strMinutes = String(format: "%02d", minutes)
        let strSeconds = String(format: "%02d", seconds)
        
        //concatenate minuets, seconds and milliseconds as assign it to the UILabel
        
        timerLabel.text = "\(strMinutes):\(strSeconds)"
    }
    
    // MARK: Session Management
    
    private enum SessionSetupResult {
        case success
        case notAuthorized
        case configurationFailed
    }
    
    private let session = AVCaptureSession()
    
    private var isSessionRunning = false
    
    private let sessionQueue = DispatchQueue(label: "session queue", attributes: [], target: nil) // Communicate with the session and other session objects on this queue.
    
    private var setupResult: SessionSetupResult = .success
    
    var videoDeviceInput: AVCaptureDeviceInput!
    
    @IBOutlet private weak var previewView: PreviewView!
    
    // Call this on the session queue.
    
    private func configureSession() {
        if setupResult != .success {
            return
        }
        
        session.beginConfiguration()
        
        // MARK: Set the recording quality
        
        /*
         Here we can modify the quality of recorded video.
         
         This setting will decrease twice the size of video file
         */
        
        session.sessionPreset = AVCaptureSessionPreset1280x720
        
        
        /*
         This setting will set the biggest possible size of video file
         
         session.sessionPreset = AVCaptureSessionPresetInputPriority
         */
        
        //MARK: Add video input.
        
        do {
            var defaultVideoDevice: AVCaptureDevice?
            
            // Choose the back dual camera if available, otherwise default to a wide angle camera.
            
            if let dualCameraDevice = AVCaptureDevice.defaultDevice(withDeviceType: .builtInDuoCamera, mediaType: AVMediaTypeVideo, position: .back) {
                defaultVideoDevice = dualCameraDevice
            }
            else if let backCameraDevice = AVCaptureDevice.defaultDevice(withDeviceType: .builtInWideAngleCamera, mediaType: AVMediaTypeVideo, position: .back) {
                
                // If the back dual camera is not available, default to the back wide angle camera.
                
                defaultVideoDevice = backCameraDevice
            }
            else if let frontCameraDevice = AVCaptureDevice.defaultDevice(withDeviceType: .builtInWideAngleCamera, mediaType: AVMediaTypeVideo, position: .front) {
                
                // In some cases where users break their phones, the back wide angle camera is not available. In this case, we should default to the front wide angle camera.
                
                defaultVideoDevice = frontCameraDevice
            }
            
            let videoDeviceInput = try AVCaptureDeviceInput(device: defaultVideoDevice)
            
            if session.canAddInput(videoDeviceInput) {
                session.addInput(videoDeviceInput)
                self.videoDeviceInput = videoDeviceInput
                
                DispatchQueue.main.async {
                    
                    /*
                     Why are we dispatching this to the main queue?
                     Because AVCaptureVideoPreviewLayer is the backing layer for PreviewView and UIView
                     can only be manipulated on the main thread.
                     Note: As an exception to the above rule, it is not necessary to serialize video orientation changes
                     on the AVCaptureVideoPreviewLayer’s connection with other session manipulation.
                     
                     Use the status bar orientation as the initial video orientation. Subsequent orientation changes are
                     handled by CameraViewController.viewWillTransition(to:with:).
                     */
                    
                    let statusBarOrientation = UIApplication.shared.statusBarOrientation
                    var initialVideoOrientation: AVCaptureVideoOrientation = .portrait
                    if statusBarOrientation != .unknown {
                        if let videoOrientation = statusBarOrientation.videoOrientation {
                            initialVideoOrientation = videoOrientation
                        }
                    }
                    
                    self.previewView.videoPreviewLayer.connection.videoOrientation = initialVideoOrientation
                }
            }
            else {
                print("Could not add video device input to the session")
                setupResult = .configurationFailed
                session.commitConfiguration()
                return
            }
        }
        catch {
            print("Could not create video device input: \(error)")
            setupResult = .configurationFailed
            session.commitConfiguration()
            return
        }
        
        // MARK: Add audio input.
        
        do {
            let audioDevice = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeAudio)
            let audioDeviceInput = try AVCaptureDeviceInput(device: audioDevice)
            
            if session.canAddInput(audioDeviceInput) {
                session.addInput(audioDeviceInput)
            }
            else {
                print("Could not add audio device input to the session")
            }
        }
        catch {
            print("Could not create audio device input: \(error)")
        }
        
        // MARK: Add video output.
        
        let movieFileOutput = AVCaptureMovieFileOutput()
        
        if session.canAddOutput(movieFileOutput) {session.addOutput(movieFileOutput)
            if let connection = movieFileOutput.connection(withMediaType: AVMediaTypeVideo) {
                if connection.isVideoStabilizationSupported {
                    connection.preferredVideoStabilizationMode = .auto
                }
            }
            session.commitConfiguration()
            
            self.movieFileOutput = movieFileOutput
            
            DispatchQueue.main.async { [unowned self] in
                self.recordButton.isEnabled = true
            }
        }
    }
    
    @IBAction private func resumeInterruptedSession(_ resumeButton: UIButton)
    {
        sessionQueue.async { [unowned self] in
            
            /*
             The session might fail to start running, e.g., if a phone or FaceTime call is still
             using audio or video. A failure to start the session running will be communicated via
             a session runtime error notification. To avoid repeatedly failing to start the session
             running, we only try to restart the session running in the session runtime error handler
             if we aren't trying to resume the session running.
             */
            
            self.session.startRunning()
            self.isSessionRunning = self.session.isRunning
            if !self.session.isRunning {
                DispatchQueue.main.async { [unowned self] in
                    let message = NSLocalizedString("Unable to resume", comment: "Alert message when unable to resume the session running")
                    let alertController = UIAlertController(title: "AVCam", message: message, preferredStyle: .alert)
                    let cancelAction = UIAlertAction(title: NSLocalizedString("OK", comment: "Alert OK button"), style: .cancel, handler: nil)
                    alertController.addAction(cancelAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
            else {
                DispatchQueue.main.async { [unowned self] in
                    self.resumeButton.isHidden = true
                }
            }
        }
    }
    
    // MARK: Device Configuration
    
    @IBOutlet private weak var cameraButton: UIButton!
    
    @IBOutlet private weak var cameraUnavailableLabel: UILabel!
    
    private let videoDeviceDiscoverySession = AVCaptureDeviceDiscoverySession(deviceTypes: [.builtInWideAngleCamera, .builtInDuoCamera], mediaType: AVMediaTypeVideo, position: .unspecified)!
    
    @IBAction private func changeCamera(_ cameraButton: UIButton) {
        cameraButton.isEnabled = false
        recordButton.isEnabled = false
        
        sessionQueue.async { [unowned self] in
            let currentVideoDevice = self.videoDeviceInput.device
            let currentPosition = currentVideoDevice!.position
            
            let preferredPosition: AVCaptureDevicePosition
            let preferredDeviceType: AVCaptureDeviceType
            
            switch currentPosition {
            case .unspecified, .front:
                preferredPosition = .back
                preferredDeviceType = .builtInDuoCamera
                
            case .back:
                preferredPosition = .front
                preferredDeviceType = .builtInWideAngleCamera
            }
            
            let devices = self.videoDeviceDiscoverySession.devices!
            var newVideoDevice: AVCaptureDevice? = nil
            
            // First, look for a device with both the preferred position and device type. Otherwise, look for a device with only the preferred position.
            
            if let device = devices.filter({ $0.position == preferredPosition && $0.deviceType == preferredDeviceType }).first {
                newVideoDevice = device
            }
            else if let device = devices.filter({ $0.position == preferredPosition }).first {
                newVideoDevice = device
            }
            
            if let videoDevice = newVideoDevice {
                do {
                    let videoDeviceInput = try AVCaptureDeviceInput(device: videoDevice)
                    
                    self.session.beginConfiguration()
                    
                    // Remove the existing device input first, since using the front and back camera simultaneously is not supported.
                    
                    self.session.removeInput(self.videoDeviceInput)
                    
                    if self.session.canAddInput(videoDeviceInput) {
                        NotificationCenter.default.removeObserver(self, name: Notification.Name("AVCaptureDeviceSubjectAreaDidChangeNotification"), object: currentVideoDevice!)
                        
                        NotificationCenter.default.addObserver(self, selector: #selector(self.subjectAreaDidChange), name: Notification.Name("AVCaptureDeviceSubjectAreaDidChangeNotification"), object: videoDeviceInput.device)
                        
                        self.session.addInput(videoDeviceInput)
                        self.videoDeviceInput = videoDeviceInput
                    }
                    else {
                        self.session.addInput(self.videoDeviceInput);
                    }
                    
                    if let connection = self.movieFileOutput?.connection(withMediaType: AVMediaTypeVideo) {
                        if connection.isVideoStabilizationSupported {
                            connection.preferredVideoStabilizationMode = .auto
                        }
                    }
                    self.session.commitConfiguration()
                }
                catch {
                    print("Error occured while creating video device input: \(error)")
                }
            }
            
            DispatchQueue.main.async { [unowned self] in
                self.cameraButton.isEnabled = true
                self.cameraButton.isHidden = false
                self.recordButton.isEnabled = self.movieFileOutput != nil
            }
        }
    }
    
    @IBAction private func focusAndExposeTap(_ gestureRecognizer: UITapGestureRecognizer) {
        let devicePoint = self.previewView.videoPreviewLayer.captureDevicePointOfInterest(for: gestureRecognizer.location(in: gestureRecognizer.view))
        focus(with: .autoFocus, exposureMode: .autoExpose, at: devicePoint, monitorSubjectAreaChange: true)
    }
    
    private func focus(with focusMode: AVCaptureFocusMode, exposureMode: AVCaptureExposureMode, at devicePoint: CGPoint, monitorSubjectAreaChange: Bool) {
        sessionQueue.async { [unowned self] in
            if let device = self.videoDeviceInput.device {
                do {
                    try device.lockForConfiguration()
                    
                    /*
                     Setting (focus/exposure)PointOfInterest alone does not initiate a (focus/exposure) operation.
                     Call set(Focus/Exposure)Mode() to apply the new point of interest.
                     */
                    
                    if device.isFocusPointOfInterestSupported && device.isFocusModeSupported(focusMode) {
                        device.focusPointOfInterest = devicePoint
                        device.focusMode = focusMode
                    }
                    
                    if device.isExposurePointOfInterestSupported && device.isExposureModeSupported(exposureMode) {
                        device.exposurePointOfInterest = devicePoint
                        device.exposureMode = exposureMode
                    }
                    
                    device.isSubjectAreaChangeMonitoringEnabled = monitorSubjectAreaChange
                    device.unlockForConfiguration()
                }
                catch {
                    print("Could not lock device for the configuration: \(error)")
                }
            }
        }
    }
    
    // MARK: Recording Movies
    
    private var movieFileOutput: AVCaptureMovieFileOutput? = nil
    
    private var backgroundRecordingID: UIBackgroundTaskIdentifier? = nil
    
    @IBOutlet private weak var recordButton: UIButton!
    
    @IBOutlet private weak var resumeButton: UIButton!
    
    @IBAction private func toggleMovieRecording(_ recordButton: UIButton) {
        
        guard let movieFileOutput = self.movieFileOutput else {
            return
        }
        
        /*
         Disable the Camera button until recording finishes, and disable
         the Record button until recording starts or finishes.
         See the AVCaptureFileOutputRecordingDelegate methods.
         */
        
        cameraButton.isEnabled = false
        cameraButton.isHidden = true
        recordButton.isEnabled = false
        self.tabBarController?.tabBar.isHidden = true
        if timerLabel.isHidden {
            startTimer()
            timerLabel.isHidden = !timerLabel.isHidden
        } else {
            stopTimer()
            timerLabel.isHidden = !timerLabel.isHidden
        }
        
        /*
         Retrieve the video preview layer's video orientation on the main queue
         before entering the session queue. We do this to ensure UI elements are
         accessed on the main thread and session configuration is done on the session queue.
         */
        
        let videoPreviewLayerOrientation = previewView.videoPreviewLayer.connection.videoOrientation
        
        sessionQueue.async { [unowned self] in
            if !movieFileOutput.isRecording {
                
                //MARK: Play "Record started" sound
                
                AudioServicesPlaySystemSound(1117)
                
                if UIDevice.current.isMultitaskingSupported {
                    
                    /*
                     Setup background task.
                     This is needed because the `capture(_:, didFinishRecordingToOutputFileAt:, fromConnections:, error:)`
                     callback is not received until AVCam returns to the foreground unless you request background execution time.
                     This also ensures that there will be time to write the file to the photo library when AVCam is backgrounded.
                     To conclude this background execution, endBackgroundTask(_:) is called in
                     `capture(_:, didFinishRecordingToOutputFileAt:, fromConnections:, error:)` after the recorded file has been saved.
                     */
                    
                    self.backgroundRecordingID = UIApplication.shared.beginBackgroundTask(expirationHandler: nil)
                }
                
                // Update the orientation on the movie file output video connection before starting recording.
                
                let movieFileOutputConnection = self.movieFileOutput?.connection(withMediaType: AVMediaTypeVideo)
                movieFileOutputConnection?.videoOrientation = videoPreviewLayerOrientation
                
                // MARK: Adding metadata with location to the movie
                
                self.locationManager.requestLocation()
                let location = self.locationManager.location
                let metadata = AVMutableMetadataItem()
                metadata.keySpace = AVMetadataKeySpaceQuickTimeMetadata
                metadata.key = AVMetadataQuickTimeMetadataKeyLocationISO6709 as NSString
                metadata.identifier = AVMetadataIdentifierQuickTimeMetadataLocationISO6709
                let lat = String(format: "%.8f", (location?.coordinate.latitude)!)
                let lon = String(format: "%.8f", (location?.coordinate.longitude)!)
                metadata.value = String("LAT_" + lat + "_LON_" + lon) as NSString
                
                movieFileOutput.metadata = [metadata]
                
                let currentDate = Date()
                let calendar = Calendar.current
                let year = calendar.component(.year, from: currentDate)
                let month = calendar.component(.month, from: currentDate)
                let day = calendar.component(.day, from: currentDate)
                let hour = calendar.component(.hour, from: currentDate)
                let minute = calendar.component(.minute, from: currentDate)
                let second = calendar.component(.second, from: currentDate)
                let nanosecond = calendar.component(.nanosecond, from: currentDate)
                var stringHour = String(hour)
                if stringHour.characters.count < 2 {
                    stringHour = String("0\(stringHour)")
                }
                var stringMinute = String(minute)
                if stringMinute.characters.count < 2 {
                    stringMinute = String("0\(stringMinute)")
                }
                let filename = "\(year)\(month)\(day)_\(stringHour)\(stringMinute)_\(second)\(nanosecond)_LAT\(lat)_LON\(lon)"
                
                // print("Recording file name: " + filename)
                // let outputFileName = NSUUID().uuidString
                
                let outputFileName = filename
                let outputFilePath = (NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last! as NSString).appendingPathComponent((outputFileName as NSString).appendingPathExtension("mov")!)
                
                // print("outputFilePath - " + outputFilePath)
                
                movieFileOutput.startRecording(toOutputFileURL: URL(fileURLWithPath: outputFilePath), recordingDelegate: self)
                
                if self.defaults.array(forKey: self.savedVideosArrayKey) != nil {
                    self.videosArray = self.defaults.array(forKey: self.savedVideosArrayKey) as! [String]
                    
                    //                    print(self.videosArray)
                }
                
                self.videosArray.append(filename)
                self.defaults.set(self.videosArray, forKey: self.savedVideosArrayKey)
            }
            else {
                movieFileOutput.stopRecording()
                //                AudioServicesPlaySystemSound(1118)
            }
        }
    }
    
    func capture(_ captureOutput: AVCaptureFileOutput!, didStartRecordingToOutputFileAt fileURL: URL!, fromConnections connections: [Any]!) {
        
        // MARK: Start speech recognition
        
        self.startRecordingSpeech()
        
        // Enable the Record button to let the user stop the recording.
        
        DispatchQueue.main.async { [unowned self] in
            self.recordButton.isEnabled = true
            self.cameraButton.isHidden = true
            self.recordButton.imageView?.image = UIImage(named: "StopCameraButton")
            //self.recordButton.setTitle(NSLocalizedString("Stop", comment: "Recording button stop title"), for: [])
            
        }
    }
    
    func capture(_ captureOutput: AVCaptureFileOutput!, didFinishRecordingToOutputFileAt outputFileURL: URL!, fromConnections connections: [Any]!, error: Error!) {
        
        /*
         Note that currentBackgroundRecordingID is used to end the background task
         associated with this recording. This allows a new recording to be started,
         associated with a new UIBackgroundTaskIdentifier, once the movie file output's
         `isRecording` property is back to false — which happens sometime after this method
         returns.
         
         Note: Since we use a unique file path for each recording, a new recording will
         not overwrite a recording currently being saved.
         */
        
        func cleanup() {
            let path = outputFileURL.path
            if FileManager.default.fileExists(atPath: path) {
                do {
                    try FileManager.default.removeItem(atPath: path)
                }
                catch {
                    print("Could not remove file at url: \(outputFileURL)")
                }
            }
            if let currentBackgroundRecordingID = backgroundRecordingID {
                backgroundRecordingID = UIBackgroundTaskInvalid
                if currentBackgroundRecordingID != UIBackgroundTaskInvalid {
                    UIApplication.shared.endBackgroundTask(currentBackgroundRecordingID)
                }
            }
        }
        
        var success = true
        
        if error != nil {
            print("Movie file finishing error: \(error)")
            success = (((error as NSError).userInfo[AVErrorRecordingSuccessfullyFinishedKey] as AnyObject).boolValue)!
        }
        if success {
            
            // MARK: File procession success
            
            print("File procession success")
            
            // MARK: Stop speech recognition
            
            self.stopRecordingSpeech()
            
            //MARK: Play "Record finished" sound
            
            AudioServicesPlaySystemSound(1118)
            
            // MARK: Save video inside application.
            
            do {
                let video = try NSData(contentsOf: outputFileURL, options: NSData.ReadingOptions())
                let fileName = videosArray.last!
                let docsPath: String = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last!
                let moviePath = docsPath + "/" + fileName + ".mov"
                print("CameraViewController movie path: \(moviePath)")
                video.write(toFile: moviePath, atomically: false)
            } catch {
                print("Can't convert video data to data file")
                cleanup()
            }
            
            // MARK: Save video to dropbox.
            
            DispatchQueue.main.async {
                let saver = DropboxViewController()
                saver.uploadVideoFile(filePath: self.videosArray.last!)
            }
            
            /*
             // Save the movie file to the photo library and cleanup.
             
             PHPhotoLibrary.shared().performChanges({
             let options = PHAssetResourceCreationOptions()
             options.shouldMoveFile = true
             let creationRequest = PHAssetCreationRequest.forAsset()
             creationRequest.addResource(with: .video, fileURL: outputFileURL, options: options)
             }, completionHandler: { success, error in
             if !success {
             print("Could not save movie to photo library: \(error)")
             }
             cleanup()
             }
             )
             */
            
        }
        else {
            cleanup()
        }
        
        // Enable the Camera and Record buttons to let the user switch camera and start another recording.
        
        DispatchQueue.main.async { [unowned self] in
            
            // Only enable the ability to change camera if the device has more than one camera.
            
            self.cameraButton.isEnabled = self.videoDeviceDiscoverySession.uniqueDevicePositionsCount() > 1
            self.cameraButton.isHidden = false
            //self.cameraButton.isHidden = !(self.videoDeviceDiscoverySession.uniqueDevicePositionsCount() > 1)
            self.tabBarController?.tabBar.isHidden = false
            self.recordButton.imageView?.image = UIImage(named: "RecordCameraButton")
            //self.recordButton.setTitle(NSLocalizedString("Record", comment: "Recording button record title"), for: [])
            
            // Only enable the ability to record after 1 second
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.recordButton.isEnabled = true
            }
        }
    }
    
    // MARK: KVO and Notifications
    
    private var sessionRunningObserveContext = 0
    
    private func addObservers() {
        session.addObserver(self, forKeyPath: "running", options: .new, context: &sessionRunningObserveContext)
        
        NotificationCenter.default.addObserver(self, selector: #selector(subjectAreaDidChange), name: Notification.Name("AVCaptureDeviceSubjectAreaDidChangeNotification"), object: videoDeviceInput.device)
        NotificationCenter.default.addObserver(self, selector: #selector(sessionRuntimeError), name: Notification.Name("AVCaptureSessionRuntimeErrorNotification"), object: session)
        
        /*
         A session can only run when the app is full screen. It will be interrupted
         in a multi-app layout, introduced in iOS 9, see also the documentation of
         AVCaptureSessionInterruptionReason. Add observers to handle these session
         interruptions and show a preview is paused message. See the documentation
         of AVCaptureSessionWasInterruptedNotification for other interruption reasons.
         */
        
        NotificationCenter.default.addObserver(self, selector: #selector(sessionWasInterrupted), name: Notification.Name("AVCaptureSessionWasInterruptedNotification"), object: session)
        NotificationCenter.default.addObserver(self, selector: #selector(sessionInterruptionEnded), name: Notification.Name("AVCaptureSessionInterruptionEndedNotification"), object: session)
    }
    
    private func removeObservers() {
        NotificationCenter.default.removeObserver(self)
        
        session.removeObserver(self, forKeyPath: "running", context: &sessionRunningObserveContext)
    }
    
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if context == &sessionRunningObserveContext {
            let newValue = change?[.newKey] as AnyObject?
            guard let isSessionRunning = newValue?.boolValue else { return }
            
            DispatchQueue.main.async { [unowned self] in
                
                // Only enable the ability to change camera if the device has more than one camera.
                
                self.cameraButton.isEnabled = isSessionRunning && self.videoDeviceDiscoverySession.uniqueDevicePositionsCount() > 1
                self.recordButton.isEnabled = isSessionRunning && self.movieFileOutput != nil
            }
        }
        else {
            super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
        }
    }
    
    func subjectAreaDidChange(notification: NSNotification) {
        let devicePoint = CGPoint(x: 0.5, y: 0.5)
        focus(with: .autoFocus, exposureMode: .continuousAutoExposure, at: devicePoint, monitorSubjectAreaChange: false)
    }
    
    func sessionRuntimeError(notification: NSNotification) {
        guard let errorValue = notification.userInfo?[AVCaptureSessionErrorKey] as? NSError else {
            return
        }
        
        let error = AVError(_nsError: errorValue)
        print("Capture session runtime error: \(error)")
        
        /*
         Automatically try to restart the session running if media services were
         reset and the last start running succeeded. Otherwise, enable the user
         to try to resume the session running.
         */
        
        if error.code == .mediaServicesWereReset {
            sessionQueue.async { [unowned self] in
                if self.isSessionRunning {
                    self.session.startRunning()
                    self.isSessionRunning = self.session.isRunning
                }
                else {
                    DispatchQueue.main.async { [unowned self] in
                        self.resumeButton.isHidden = false
                    }
                }
            }
        }
        else {
            resumeButton.isHidden = false
        }
    }
    
    func sessionWasInterrupted(notification: NSNotification) {
        
        /*
         In some scenarios we want to enable the user to resume the session running.
         For example, if music playback is initiated via control center while
         using AVCam, then the user can let AVCam resume
         the session running, which will stop music playback. Note that stopping
         music playback in control center will not automatically resume the session
         running. Also note that it is not always possible to resume, see `resumeInterruptedSession(_:)`.
         */
        
        if let userInfoValue = notification.userInfo?[AVCaptureSessionInterruptionReasonKey] as AnyObject?, let reasonIntegerValue = userInfoValue.integerValue, let reason = AVCaptureSessionInterruptionReason(rawValue: reasonIntegerValue) {
            print("Capture session was interrupted with the reason \(reason)")
            
            var showResumeButton = false
            
            if reason == AVCaptureSessionInterruptionReason.audioDeviceInUseByAnotherClient || reason == AVCaptureSessionInterruptionReason.videoDeviceInUseByAnotherClient {
                showResumeButton = true
            }
            else if reason == AVCaptureSessionInterruptionReason.videoDeviceNotAvailableWithMultipleForegroundApps {
                
                // Simply fade-in a label to inform the user that the camera is unavailable.
                
                cameraUnavailableLabel.alpha = 0
                cameraUnavailableLabel.isHidden = false
                UIView.animate(withDuration: 0.25) { [unowned self] in
                    self.cameraUnavailableLabel.alpha = 1
                }
            }
            
            if showResumeButton {
                
                // Simply fade-in a button to enable the user to try to resume the session running.
                
                resumeButton.alpha = 0
                resumeButton.isHidden = false
                UIView.animate(withDuration: 0.25) { [unowned self] in
                    self.resumeButton.alpha = 1
                }
            }
        }
    }
    
    func sessionInterruptionEnded(notification: NSNotification) {
        print("Capture session interruption ended")
        
        if !resumeButton.isHidden {
            UIView.animate(withDuration: 0.25,
                           animations: { [unowned self] in
                            self.resumeButton.alpha = 0
                }, completion: { [unowned self] finished in
                    self.resumeButton.isHidden = true
                }
            )
        }
        if !cameraUnavailableLabel.isHidden {
            UIView.animate(withDuration: 0.25,
                           animations: { [unowned self] in
                            self.cameraUnavailableLabel.alpha = 0
                }, completion: { [unowned self] finished in
                    self.cameraUnavailableLabel.isHidden = true
                }
            )
        }
    }
}

extension UIDeviceOrientation {
    var videoOrientation: AVCaptureVideoOrientation? {
        switch self {
        case .portrait: return .portrait
        case .portraitUpsideDown: return .portraitUpsideDown
        case .landscapeLeft: return .landscapeRight
        case .landscapeRight: return .landscapeLeft
        default: return nil
        }
    }
}

extension UIInterfaceOrientation {
    
    var videoOrientation: AVCaptureVideoOrientation? {
        switch self {
        case .portrait: return .portrait
        case .portraitUpsideDown: return .portraitUpsideDown
        case .landscapeLeft: return .landscapeLeft
        case .landscapeRight: return .landscapeRight
        default: return nil
        }
    }
    
}

extension AVCaptureDeviceDiscoverySession {
    
    func uniqueDevicePositionsCount() -> Int {
        var uniqueDevicePositions = [AVCaptureDevicePosition]()
        
        for device in devices {
            if !uniqueDevicePositions.contains(device.position) {
                uniqueDevicePositions.append(device.position)
            }
        }
        
        return uniqueDevicePositions.count
    }
    
}

extension SFSpeechRecognitionTaskDelegate {
    
    func speechRecognitionTask(_ task: SFSpeechRecognitionTask, didFinishSuccessfully successfully: Bool) {
        if successfully {
            print("+++++++++TRUE+++++++++")
        } else {
            print("---------FALSE---------")
        }
    }
    
    func speechRecognitionTask(_ task: SFSpeechRecognitionTask, didFinishRecognition recognitionResult: SFSpeechRecognitionResult) {
        //        console.text = console.text + "\n" + recognitionResult.bestTranscription.formattedString
        print("!!!SpeechRecognitionTask: \(recognitionResult.bestTranscription.formattedString)")
    }
    
}

