# loca3

todo:
- Same wiki-data -> same geo-object (merge)
- Better category than tag-key. e.g https://nominatim.openstreetmap.org/details.php?place_id=198799046. boundary:administrative men när söker: county


----------

São Tomé e Príncipe:
place_id 102524 ignoreras vid sök på nominatim.openstreetmap.org
place_id 100001 finns


 place_id | parent_place_id | linked_place_id |    importance     | geometry_sector | rank_address | rank_search | partition | indexed_status |  osm_id   | osm_type |  class   |      type      |        left         | admin_level |                address                 |                                                extratags                                                 | country_code | housenumber | postcode |        wikipedia         |                      centroid
----------+-----------------+-----------------+-------------------+-----------------+--------------+-------------+-----------+----------------+-----------+----------+----------+----------------+---------------------+-------------+----------------------------------------+----------------------------------------------------------------------------------------------------------+--------------+-------------+----------+--------------------------+----------------------------------------------------
   100001 |               0 |          102524 | 0.479251282826472 |        53493499 |            4 |           4 |        53 |              0 | 249399429 | N        | place    | country        | São Tomé e Príncipe |          15 | "continent"=>"Africa"                  | "wikidata"=>"Q1039", "wikipedia"=>"fr:Sao Tomé-et-Principe", "population"=>"206178"                      | st           |             |          | fr:Sao_Tomé-et-Principe  | 0101000020E6100000A354675A07DC1B406D4892D6CE66EC3F
   102524 |               0 |                 | 0.545732015393547 |        53493499 |            4 |           4 |        53 |              0 |    535880 | R        | boundary | administrative | São Tomé e Príncipe |           2 | "country"=>"ST", "continent"=>"Africa" | "place"=>"country", "wikidata"=>"Q1039", "wikipedia"=>"en:São Tomé and Príncipe", "population"=>"206178" | st           |             |          | en:São_Tomé_and_Príncipe | 0101000020E6100000A354675A07DC1B406D4892D6CE66EC3F


---------------------------------------

Tag -> category, tools:

- Special phrases, nominatim: https://wiki.openstreetmap.org/wiki/Nominatim/Special_Phrases
- Overpass turbo, source: /data/iD_presets_en.json
- Nominatim method in website search's result listing ?

Ej hårdkådad tag: natural=saddle. tex: Collado Resinero
Ej förekommande i översättningslistor nämnda ovan, tex: mountain_pass
