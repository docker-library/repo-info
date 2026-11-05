## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:3e5ebc7d043bb4237ae18863b6bdac16c6fbf3d9d827ac7a763075032d9de2f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5a5be34be841c47d3b7cc268df1f6df005dffc7bc3b57ae4f9294b59238f39f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47930851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b79d1722632708256b6882e88f3d57f20e9c7b997a9c486fc41ae93df98fb0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:01 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:05 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Thu, 05 Nov 2026 19:24:05 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:24:05 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Thu, 05 Nov 2026 19:24:05 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:24:05 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:24:05 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:24:05 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:24:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:05 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:24:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d52f0c63244cd052a0c232cf22ad062a7a0f0e61b5f382de0550310c6c45915`  
		Last Modified: Thu, 05 Nov 2026 19:24:15 GMT  
		Size: 1.2 MB (1180332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365d0d8e7249bf620b464c7e63f362e94d68ea628731294dd9681da0578e602`  
		Last Modified: Thu, 05 Nov 2026 19:24:16 GMT  
		Size: 43.1 MB (43123348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bed4d30d3db8ca6d522eb71b15dde4b475154e1eb5a8e49e7aa7694eb45692`  
		Last Modified: Thu, 05 Nov 2026 19:24:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5926499d3fd70e57a2c2547cb3bda696f1f038d7f5eda5b57b0b4acc2e94a85`  
		Last Modified: Thu, 05 Nov 2026 19:24:15 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78bbd9b08cc3e4528350f26f9d191e7ac5cd5330e8e869f16e6f7824ea2da3fd`  
		Last Modified: Thu, 05 Nov 2026 19:24:16 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:ee2b0e7f40f6daae14a7674dff23b2d3bd0dc40fd43885865d100c9b38dbfc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **778.5 KB (778536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc08a7e0516b2bb97ca2a9186cbc847f9767a8226316a9491641b65d319dce4f`

```dockerfile
```

-	Layers:
	-	`sha256:0d3e299be40a2bbeaf1e58ad473a904d08adbe61d375b99776bda28b7cb2efb4`  
		Last Modified: Thu, 05 Nov 2026 19:24:15 GMT  
		Size: 763.0 KB (763006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce0da9da18f7228d0e25f78f712a1d1f42a590c37ba8f6e09316e8d6a9bc3272`  
		Last Modified: Thu, 05 Nov 2026 19:24:15 GMT  
		Size: 15.5 KB (15530 bytes)  
		MIME: application/vnd.in-toto+json
