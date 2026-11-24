## `influxdb:data`

```console
$ docker pull influxdb@sha256:227dcf6602b985231ec7ca444c9682f62eb3df72373260b91f82793ab72f25a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:6680dae7214e26364a59fa50bd006a13532461bc57eaa5ae1a52ab35fda3905a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126473954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be16b89b631328e6120018aebb1b445f24452070fea34fd06f752990d247b9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:04 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:26:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912919e963a171ad7f6d68e1c35eed94a146149d9ed0f61321710e02f370e3f8`  
		Last Modified: Tue, 24 Nov 2026 05:26:19 GMT  
		Size: 54.1 MB (54072545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1cee16252fe63ccc373c0aa057a71690724bfbe7a993409e7bdd48c68ea77a`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6601d31eaf9b4f603fd19a601985b432b215ec3209d542bb0f388ea17031f975`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8437c47e018522a3b4335f2550e343c653d8d3c947083cb4402480f35ec1bfb8`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data` - unknown; unknown

```console
$ docker pull influxdb@sha256:0afd7f874301171488a081830157b16a7e95c9e37282d7d53a868f7cc37deff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4718861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3789939b090e6a625a5c3b004be121fa77e87c5d9fcb78b88d0b5488d80199a0`

```dockerfile
```

-	Layers:
	-	`sha256:4efe40380374d84c65deb12bdca41c0c706eee1cf3bbe0fe7606073c760713e3`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 4.7 MB (4704708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c31be7b03ffa1e60ef1eec7034c612b40901518203f67b5a89fa4e807cbb48`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 14.2 KB (14153 bytes)  
		MIME: application/vnd.in-toto+json
