//
//	ModelImage.swift
//
//	Create by Dinal Jivani on 16/5/2022
//	Copyright © 2022. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelImage{

	var wStill : Model480wStill!
	var downsized : Model480wStill!
	var downsizedLarge : Model480wStill!
	var downsizedMedium : Model480wStill!
	var downsizedSmall : ModelDownsizedSmall!
	var downsizedStill : Model480wStill!
	var fixedHeight : ModelFixedHeight!
	var fixedHeightDownsampled : ModelFixedHeightDownsampled!
	var fixedHeightSmall : ModelFixedHeight!
	var fixedHeightSmallStill : Model480wStill!
	var fixedHeightStill : Model480wStill!
	var fixedWidth : ModelFixedHeight!
	var fixedWidthDownsampled : ModelFixedHeightDownsampled!
	var fixedWidthSmall : ModelFixedHeight!
	var fixedWidthSmallStill : Model480wStill!
	var fixedWidthStill : Model480wStill!
	var looping : ModelLooping!
	var original : ModelOriginal!
	var originalMp4 : ModelDownsizedSmall!
	var originalStill : Model480wStill!
	var preview : ModelDownsizedSmall!
	var previewGif : Model480wStill!
	var previewWebp : Model480wStill!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let wStillData = dictionary["480w_still"] as? [String:Any]{
            wStill = Model480wStill(fromDictionary: wStillData)
		}
		if let downsizedData = dictionary["downsized"] as? [String:Any]{
			downsized = Model480wStill(fromDictionary: downsizedData)
		}
		if let downsizedLargeData = dictionary["downsized_large"] as? [String:Any]{
			downsizedLarge = Model480wStill(fromDictionary: downsizedLargeData)
		}
		if let downsizedMediumData = dictionary["downsized_medium"] as? [String:Any]{
			downsizedMedium = Model480wStill(fromDictionary: downsizedMediumData)
		}
		if let downsizedSmallData = dictionary["downsized_small"] as? [String:Any]{
			downsizedSmall = ModelDownsizedSmall(fromDictionary: downsizedSmallData)
		}
		if let downsizedStillData = dictionary["downsized_still"] as? [String:Any]{
			downsizedStill = Model480wStill(fromDictionary: downsizedStillData)
		}
		if let fixedHeightData = dictionary["fixed_height"] as? [String:Any]{
			fixedHeight = ModelFixedHeight(fromDictionary: fixedHeightData)
		}
		if let fixedHeightDownsampledData = dictionary["fixed_height_downsampled"] as? [String:Any]{
			fixedHeightDownsampled = ModelFixedHeightDownsampled(fromDictionary: fixedHeightDownsampledData)
		}
		if let fixedHeightSmallData = dictionary["fixed_height_small"] as? [String:Any]{
			fixedHeightSmall = ModelFixedHeight(fromDictionary: fixedHeightSmallData)
		}
		if let fixedHeightSmallStillData = dictionary["fixed_height_small_still"] as? [String:Any]{
			fixedHeightSmallStill = Model480wStill(fromDictionary: fixedHeightSmallStillData)
		}
		if let fixedHeightStillData = dictionary["fixed_height_still"] as? [String:Any]{
			fixedHeightStill = Model480wStill(fromDictionary: fixedHeightStillData)
		}
		if let fixedWidthData = dictionary["fixed_width"] as? [String:Any]{
			fixedWidth = ModelFixedHeight(fromDictionary: fixedWidthData)
		}
		if let fixedWidthDownsampledData = dictionary["fixed_width_downsampled"] as? [String:Any]{
			fixedWidthDownsampled = ModelFixedHeightDownsampled(fromDictionary: fixedWidthDownsampledData)
		}
		if let fixedWidthSmallData = dictionary["fixed_width_small"] as? [String:Any]{
			fixedWidthSmall = ModelFixedHeight(fromDictionary: fixedWidthSmallData)
		}
		if let fixedWidthSmallStillData = dictionary["fixed_width_small_still"] as? [String:Any]{
			fixedWidthSmallStill = Model480wStill(fromDictionary: fixedWidthSmallStillData)
		}
		if let fixedWidthStillData = dictionary["fixed_width_still"] as? [String:Any]{
			fixedWidthStill = Model480wStill(fromDictionary: fixedWidthStillData)
		}
		if let loopingData = dictionary["looping"] as? [String:Any]{
			looping = ModelLooping(fromDictionary: loopingData)
		}
		if let originalData = dictionary["original"] as? [String:Any]{
			original = ModelOriginal(fromDictionary: originalData)
		}
		if let originalMp4Data = dictionary["original_mp4"] as? [String:Any]{
			originalMp4 = ModelDownsizedSmall(fromDictionary: originalMp4Data)
		}
		if let originalStillData = dictionary["original_still"] as? [String:Any]{
			originalStill = Model480wStill(fromDictionary: originalStillData)
		}
		if let previewData = dictionary["preview"] as? [String:Any]{
			preview = ModelDownsizedSmall(fromDictionary: previewData)
		}
		if let previewGifData = dictionary["preview_gif"] as? [String:Any]{
			previewGif = Model480wStill(fromDictionary: previewGifData)
		}
		if let previewWebpData = dictionary["preview_webp"] as? [String:Any]{
			previewWebp = Model480wStill(fromDictionary: previewWebpData)
		}
	}

}
