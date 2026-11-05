## `influxdb:meta`

```console
$ docker pull influxdb@sha256:206b632d88f942a59b7aa218efcc859c2cd30e00f9fec36498641654824d816b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:a33ef256156e56e1b48e8712d565f5d7c284f8fb998d6048868c1aa58377d7e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91785454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30eab3c00532755b3c4b1bf34e425805f8e7cae163ac0bbfc4ad610f876b6482`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:39 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Thu, 05 Nov 2026 08:36:39 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 08:36:39 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Thu, 05 Nov 2026 08:36:39 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:39 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Thu, 05 Nov 2026 08:36:39 GMT
EXPOSE map[8091/tcp:{}]
# Thu, 05 Nov 2026 08:36:39 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:36:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:36:39 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f07a08e2ca89e80595a5fa376005cb17ee1aa365b8862c772af6529737015d5`  
		Last Modified: Thu, 05 Nov 2026 08:36:48 GMT  
		Size: 19.4 MB (19385187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cda5470a60e5d081925a822dedc2bbdc46b822e4d59e9cc76bff5074eb2c44d`  
		Last Modified: Thu, 05 Nov 2026 08:36:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4934a4edfe9572d6946333aff55e43d4697cf94f014d2f0a5db71e0cc6599ae`  
		Last Modified: Thu, 05 Nov 2026 08:36:48 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:c532e765842680bd50d75a7f86d0de1035d89f558b1e6ecd89590b1e1bd82255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4608373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7902bb7904321fe8ae288c3e1a391ccf6dfbd2ee3ec5c5d00f30f5d6d4997d1b`

```dockerfile
```

-	Layers:
	-	`sha256:c01ca795006c8e2e5d507ca260fabafddf2bced5f990e747001df3f0c2b53036`  
		Last Modified: Thu, 05 Nov 2026 08:36:48 GMT  
		Size: 4.6 MB (4595710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74d04aa70b1bc4a43a0419474773548cc3f1d9e5a79a21cb00cfe23291969dac`  
		Last Modified: Thu, 05 Nov 2026 08:36:48 GMT  
		Size: 12.7 KB (12663 bytes)  
		MIME: application/vnd.in-toto+json
