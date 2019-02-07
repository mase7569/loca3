select
    left(name->'name', 30),
    place_id,
    rank_search,
    'https://www.openstreetmap.org/' ||
                                     case when osm_type='N' then 'node'
                                          when osm_type='W' then 'way'
                                          else 'relation'
                                     end
                                     || '/' || osm_id,
    coalesce(importance, 0.75-(rank_search*1.0/40))
from
    placex
order by
      coalesce(importance, 0.75-(rank_search*1.0/40)) desc;


select
    place_id,
    parent_place_id,
    linked_place_id,
    importance,
    geometry_sector,
    rank_address,
    rank_search,
    partition,
    indexed_status,
    osm_id,
    osm_type,
    class,
    type,
    left(name->'name',20),
    admin_level,
    address,
    extratags,
    country_code,
    housenumber,
    postcode,
    wikipedia,
    centroid
from
    placex
where
    place_id in (102524, 100001);

    geometry,
    name


WITH summary as (
     select *, ROW_NUMBER() OVER (PARTITION BY osm_type,osm_id ORDER BY importance) as index
     from placex)
select
    left(name->'name', 30),
    place_id,
    rank_search,
    'https://www.openstreetmap.org/' ||
                                     case when osm_type='N' then 'node'
                                          when osm_type='W' then 'way'
                                          else 'relation'
                                     end
                                     || '/' || osm_id,
    coalesce(importance, 0.75-(rank_search*1.0/40))
from summary
where index = 1 AND name->'name' != ''
order by
      coalesce(importance, 0.75-(rank_search*1.0/40)) desc;


test tar bort kopior:
osm_id=2401213448
select osm_type,osm_id from placex group by osm_type,osm_id having count(*) > 1;
