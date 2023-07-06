//
//  main.swift
//  bai3
//
//  Created by Nguyễn Ngọc Sơn on 06/07/2023.
//

import Foundation

//var cost: Float = 0
//func giatien(hangXe: String, loaiXe: String, totalKm: Float ) -> Float {
//    if hangXe == "mai linh" {
//        if loaiXe == "ML 4 chỗ nhỏ" {
//            if totalKm <= 1.28 {
//                cost = totalKm * 20000
//            } else if totalKm > 1.28 && totalKm < 31 {
//                cost = ((totalKm - 1.28) * 14500) + (1.28 * 20000)
//            } else if totalKm >= 31 {
//                cost = ((1.28 * 20000) + (29.72 * 14500) + ((totalKm - 31) * 12000))
//            }
//            print(cost)
//
//        } else if loaiXe == "ML 4 chỗ lớn" {
//            if totalKm <= 1.28 {
//                cost = totalKm * 20000
//            } else if totalKm > 1.28 && totalKm < 31 {
//                cost = ((totalKm - 1.28) * 16000) + (1.28 * 20000)
//            } else if totalKm >= 31 {
//                cost = ((1.28 * 20000) + (29.72 * 16000) + ((totalKm - 31) * 12700))
//            }
//            print(cost)
//
//        } else if loaiXe == "ML 7 chỗ" {
//            if totalKm <= 1.28 {
//                cost = totalKm * 20000
//            } else if totalKm > 1.28 && totalKm < 31 {
//                cost = ((totalKm - 1.28) * 17000) + (1.28 * 20000)
//            } else if totalKm >= 31 {
//                cost = ((1.28 * 20000) + (29.72 * 17000) + ((totalKm - 31) * 14300))
//            }
//            print(cost)
//        }
//
//    } else if hangXe == "vinasun" {
//        if loaiXe == "VNS 4 chỗ" {
//            if totalKm <= 0.5 {
//                cost = totalKm * 11000
//            } else if totalKm > 0.5 && totalKm < 31 {
//                cost = ((totalKm - 0.5) * 17600) + (0.5 * 11000)
//            } else if totalKm >= 31 {
//                cost = ((0.5 * 11000) + (29.72 * 176000) + ((totalKm - 31) * 14500))
//            }
//            print(cost)
//
//        } else if loaiXe == "VNS 7 chỗ" {
//            if totalKm <= 0.5 {
//                cost = totalKm * 12000
//            } else if totalKm > 0.5 && totalKm < 31 {
//                cost = ((totalKm - 0.5) * 19600) + (0.5 * 12000)
//            } else if totalKm >= 31 {
//                cost = ((0.5 * 12000) + (29.72 * 196000) + ((totalKm - 31) * 17100))
//            }
//            print("số tiền cần phải trả sau khi bạn đi xe \(loaiXe) hãng \(hangXe), quãng đường \(totalKm)km là: \(cost)VNĐ")
//
//        }
//    }
//    return 0
//}
//giatien(hangXe: "vinasun", loaiXe: "VNS 7 chỗ", totalKm:  0.5)

func tinhTienCuoc(hangXe: CarCompany, dichVu: Service, soKm: Double) {
    var giaMoCua: Double = 0
    var kmMoCua: Double = 0
    var giaKmTiepTheo: Double = 0
    var giaKmThuN :Double = 0
    var kmThuN: Double = 0
    
    switch hangXe {
    case .MAI_LINH:
        giaMoCua = 20000
        kmMoCua = 1.28
        kmThuN = 31
        switch dichVu {
        case .XE_4_NHO:
            giaKmTiepTheo = 14500
            giaKmThuN = 12000
        case .XE_4_LON:
            giaKmTiepTheo = 16000
            giaKmThuN = 12700
        case .XE_7:
            giaKmTiepTheo = 17000
            giaKmThuN = 14300
        default:
            break
        }
    case .VINA_SUN:
        kmThuN = 31
        kmMoCua = 0.5
        switch dichVu {
        case .XE_4_LON:
            giaMoCua = 11500
            giaKmTiepTheo = 17600
            giaKmThuN = 14500
        case .XE_7:
            giaMoCua = 12000
            giaKmTiepTheo = 19600
            giaKmThuN = 17100
        default:
            break
        }
    case .VINA_TAXI:
        print()
    case .GROUP:
        print()
    case .G7:
        print()
    }
    
    var tienCuoc: Double = 0
    if soKm <= 0 {
        tienCuoc = 0
    } else if soKm <= kmMoCua {
        tienCuoc = giaMoCua
    } else if soKm > kmMoCua && soKm < kmThuN {
        tienCuoc = giaMoCua + giaKmTiepTheo * (soKm - kmMoCua)
    } else {
        tienCuoc = giaMoCua + giaKmTiepTheo * (soKm - kmMoCua) + giaKmThuN * (soKm - kmThuN -1)
//         33= 20000 + 14500(33-1.28) + 12000(33-31-1)??????
    }
    
    print("tiền cước của chuyến xe \(hangXe.rawValue), \(dichVu.rawValue) là \(tienCuoc)")
}

tinhTienCuoc(hangXe: .MAI_LINH, dichVu: .XE_4_NHO, soKm: 1)
