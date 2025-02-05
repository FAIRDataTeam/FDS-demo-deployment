-- TRAINS
INSERT INTO public.train_type (uuid, uri, title, note, created_at, updated_at)
VALUES ('dfbee778-7a1a-4c8b-9ad8-946eed6d6884', 'https://w3id.org/fdp/fdt-o#SPARQLTrain', 'SPARQL Train', ' ', '2022-11-28 15:21:26.000000', '2022-11-28 15:21:26.000000');

INSERT INTO public.train_garage (uuid, uri, display_name, note, metadata, last_contact_at, created_at, updated_at, status)
VALUES ('46ce8916-19e1-4246-8515-a04d1f443709', 'https://trains.fairdatatrain.org/', 'Trains C4Yourself', '', null, '2022-11-28 15:04:50.000000', '2022-11-28 15:04:50.000000', '2022-11-28 15:04:50.000000', 'SYNCED');

INSERT INTO public.train (uuid, uri, title, description, keywords, metadata, last_contact_at, train_garage_id, created_at, updated_at, status, soft_deleted)
VALUES ('9957ef91-8f62-4f9b-a855-656589a24436', 'https://trains.fairdatatrain.org/train/cf4ca15b-f486-4e11-9434-f38f9770133e', 'SPARQL query to retrieve COVID 19 data', 'SPARQL query to retrieve COVID 19 cases per region in the Netherlands', null, null, '2022-11-28 15:23:46.000000', '46ce8916-19e1-4246-8515-a04d1f443709', '2022-11-28 15:23:46.000000', '2022-11-28 15:23:46.000000', 'SYNCED', false);
INSERT INTO public.train_train_type (train_type_id, train_id)
VALUES ('dfbee778-7a1a-4c8b-9ad8-946eed6d6884', '9957ef91-8f62-4f9b-a855-656589a24436');

-- STATIONS (!! EDIT URI OF STATION)
INSERT INTO public.station_directory (uuid, uri, display_name, note, metadata, last_contact_at, created_at, updated_at, status)
VALUES ('e8ca259c-91b6-4e6b-963b-403b8f78bea7', 'http://example.com/station-directory', 'DEMO Station Directory', ' ', null, '2022-11-28 15:25:33.000000', '2022-11-28 15:25:33.000000', '2022-11-28 15:25:33.000000', 'SYNCED');

INSERT INTO public.station (uuid, uri, title, description, keywords, metadata, last_contact_at, station_directory_id, created_at, updated_at, status, soft_deleted)
VALUES ('1fe1506f-2f1d-45ad-9b48-e16fdb529654', 'https://fds.fairdatatrain.org', 'DEMO FDS', 'FAIR Data Station for demonstration purposes', null, null, '2022-11-28 15:26:01.000000', 'e8ca259c-91b6-4e6b-963b-403b8f78bea7', '2022-11-28 15:26:01.000000', '2022-11-28 15:26:01.000000', 'SYNCED', false);
INSERT INTO public.station_train_type (train_type_id, station_id)
VALUES ('dfbee778-7a1a-4c8b-9ad8-946eed6d6884', '1fe1506f-2f1d-45ad-9b48-e16fdb529654');

-- PLAN
INSERT INTO public.plan (uuid, display_name, note, train_id, created_at, updated_at)
VALUES ('5a71f540-1019-47c2-98b7-a4c7db61746f', 'DEMO Plan', 'Plan for simple SPARQL train demonstration with just one station', '9957ef91-8f62-4f9b-a855-656589a24436', '2022-11-28 15:29:36.000000', '2022-11-28 15:29:36.000000');

INSERT INTO public.plan_target (uuid, station_id, plan_id, created_at, updated_at)
VALUES ('eba34fc4-d3b0-4f78-8986-5d04f359c5a4', '1fe1506f-2f1d-45ad-9b48-e16fdb529654', '5a71f540-1019-47c2-98b7-a4c7db61746f', '2022-11-28 15:29:36.000000', '2022-11-28 15:29:36.000000');

