// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dynamicSplashModel = try? newJSONDecoder().decode(DynamicSplashModel.self, from: jsonData)

import Foundation

// MARK: - DynamicSplashModel
struct DynamicSplashModel: Codable {
    var data: DataClass?
    var status: Int?
    var message: String?
}

// MARK: - DataClass
struct DataClass: Codable {
    var bannerCntList: [BannerCntList]?
}

// MARK: - BannerCntList
struct BannerCntList: Codable {
    var bannerAutoSn, bannerCntentAutoSn, bannerCntentCatCD: String?
    var sortSeqNo: Int?
    var cntentFileNm, cntentFilePathNm, htmlCntent: String?
    var linkURL: String?
    var cntentNm, linkDisplayYn: String?

    enum CodingKeys: String, CodingKey {
        case bannerAutoSn, bannerCntentAutoSn
        case bannerCntentCatCD = "bannerCntentCatCd"
        case sortSeqNo, cntentFileNm, cntentFilePathNm, htmlCntent
        case linkURL = "linkUrl"
        case cntentNm, linkDisplayYn
    }
}


// MARK: - Response

/*
 
{
    "data": {
        "bannerCntList": [
            {
                "bannerAutoSn": "999",
                "bannerCntentAutoSn": "1008",
                "bannerCntentCatCd": "IMG",
                "sortSeqNo": 1,
                "cntentFileNm": "4fe9b910-2022-416b-9f4e-d62a00807fef.png",
                "cntentFilePathNm": "/banimg/202212/",
                "htmlCntent": "",
                "linkUrl": "http://naver.com",
                "cntentNm": "모바일배너",
                "linkDisplayYn": "Y"
            }
        ]
    },
    "status": 200,
    "message": "SUCCESS"
}

도메인 + cntentFilePathNm + cntentFileNm  로 조합
https://devcontents.hoottown.com/banimg/202212/4fe9b910-2022-416b-9f4e-d62a00807fef.png
 
 
 */



// MARK: - Response

/*
 
{
    "data": {
        "bannerCntList": [
            {
                "bannerAutoSn": "999",
                "bannerCntentAutoSn": "1008",
                "bannerCntentCatCd": "IMG",
                "sortSeqNo": 1,
                "cntentFileNm": "4fe9b910-2022-416b-9f4e-d62a00807fef.png",
                "cntentFilePathNm": "/banimg/202212/",
                "htmlCntent": "",
                "linkUrl": "http://naver.com",
                "cntentNm": "모바일배너",
                "linkDisplayYn": "Y"
            }
        ]
    },
    "status": 200,
    "message": "SUCCESS"
}

도메인 + cntentFilePathNm + cntentFileNm  로 조합
https://devcontents.hoottown.com/banimg/202212/4fe9b910-2022-416b-9f4e-d62a00807fef.png
 
 
 */


