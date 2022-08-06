import 'package:flutter/material.dart';
import 'package:trading_demo/models/company.dart';

class CompanyHelper
{
  static List<Company> SarchResultCompany=CompanySearchResultRawData
      .map((data)=>Company(
        image: data['image'].toString(),
        title: data['title'].toString(),
        Subtitle: data['Subtitle'].toString(),
        number: data['number'].toString()
      ))
      .toList();
}

var CompanySearchResultRawData=
[
  {
    'image':'https://cryptologos.cc/logos/terra-luna-luna-logo.png',
    'title':'Terra',
    'Subtitle':'LUNA',
    'number':'#12'
  },


  //2
  {
    'image':'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png',
    'title':'Polygan',
    'Subtitle':'MATIC',
    'number':'#12'
  },

  //3
  {
    'image':'	https://cryptologos.cc/logos/terra-luna-luna-logo.png',
    'title':'Terra Classic',
    'Subtitle':'LUNC',
    'number':'#12'
  },

  //4
  {
    'image':'https://assets.gadgets360cdn.com/img/crypto/weth-og-logo.png',
    'title':'WETH',
    'Subtitle':'WETH',
    'number':'#12'
  },

  //5
  {
    'image':'https://archive.org/download/github.com-ethereum-remix-project_-_2021-11-25_15-56-04/cover.jpg',
    'title':'Etherium',
    'Subtitle':'ETH',
    'number':'#12'
  }

];
