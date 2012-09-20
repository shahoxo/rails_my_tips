# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Summary.delete_all

Summary.create(depth_key: '09月', width_key: 'B', summary_count: 2)
Summary.create(depth_key: '09月', width_key: 'A', summary_count: 1)
Summary.create(depth_key: '10月', width_key: 'A', summary_count: 3)
Summary.create(depth_key: '11月', width_key: 'C', summary_count: 1)
