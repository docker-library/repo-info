## `influxdb:data`

```console
$ docker pull influxdb@sha256:6cf25fec9a3c0a33b0c277ee7876b3337eccd84ad224dc27e86b3ab0034eb983
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:5ac0ee8109977a320b30d814de23f27ca15a09e08a6d0fd5d51108d5b25d741f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115585527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780a2d5fabf8e5083f66cdbabfb5162fd45ae11fdabda5b22a9422f29c247594`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:04 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Wed, 21 Oct 2026 01:33:04 GMT
ENV INFLUXDB_PR=
# Wed, 21 Oct 2026 01:33:04 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Wed, 21 Oct 2026 01:33:04 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:04 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 21 Oct 2026 01:33:04 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 21 Oct 2026 01:33:04 GMT
VOLUME [/var/lib/influxdb]
# Wed, 21 Oct 2026 01:33:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:33:04 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 21 Oct 2026 01:33:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 01:33:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb8e966aaea7a5e63c5d9419b6ebd00da2fbd9e043572a34e6303fe129e1cb`  
		Last Modified: Wed, 21 Oct 2026 01:33:19 GMT  
		Size: 43.2 MB (43189931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7b13cca274951221f07e6ae9d648d30de9ef254e59f38b0e3b2b4dc9af1978`  
		Last Modified: Wed, 21 Oct 2026 01:33:17 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a4ee7b9c5e13ca2356fff9dbe2b3ac29f637836c8aa622a61780b0ec798cda`  
		Last Modified: Wed, 21 Oct 2026 01:33:17 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6776bc8da955220ca4dae3b0cb12e7fe1e0c60100fbe9500d275ad17d3d20f`  
		Last Modified: Wed, 21 Oct 2026 01:33:17 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data` - unknown; unknown

```console
$ docker pull influxdb@sha256:a0f52c897f219b8c03127bd70c300e300e3dd3de56c984c01a5d44ba51412d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4710518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc6910ba32eef1d630815c409dfe59cde58334c1d35ac1e4b9fa17af8370cab`

```dockerfile
```

-	Layers:
	-	`sha256:cc3d74e4315984a60962507182ab53dbe1253e9221e8c07e0ed7b26f362899fe`  
		Last Modified: Wed, 21 Oct 2026 01:33:17 GMT  
		Size: 4.7 MB (4696364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70a09bfe7094c5a31cc2d0f004d4eead3b2d9fecdc02abeb345c1014b7ae2f7d`  
		Last Modified: Wed, 21 Oct 2026 01:33:17 GMT  
		Size: 14.2 KB (14154 bytes)  
		MIME: application/vnd.in-toto+json
