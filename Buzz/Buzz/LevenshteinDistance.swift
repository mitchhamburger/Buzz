//
//  LevenshteinDistance.swift
//  Buzz
//
//  Created by Mitch Hamburger on 10/25/16.
//  Copyright © 2016 Mitch Hamburger. All rights reserved.
//

func LD(s: String, len_s: Int, t: String, len_t: Int) -> Int{
    
    var cost = 0;
    if (len_s == 0) {
        return len_t
    }
    if (len_t == 0) {
        return len_s
    }
    
    if (t[t.startIndex.advancedBy(len_t - 1)] == s[s.startIndex.advancedBy(len_s - 1)]) {
        cost = 0
    }
    else {
        cost = 1;
    }

    return min(LD(s, len_s: len_s - 1, t: t, len_t: len_t) + 1,
               LD(s, len_s: len_s, t: t, len_t: len_t - 1) + 1,
               LD(s, len_s: len_s - 1, t: t, len_t: len_t - 1) + cost);
}
