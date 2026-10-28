## `influxdb:data`

```console
$ docker pull influxdb@sha256:c2705f9724b0c07dd95fb5017ed2ba61542e3c97f204d9dd08e2fb538f1c4719
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:a057da7986c21c7e3c5b987923e431457b2d16370fc8eadba8f0bdadf40d142d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115589479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f058ea7bec08e0d02b6f430a4bcaac46cdc9fc6bcde32ecee0b48d29763ff30f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:28:53 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Wed, 28 Oct 2026 02:28:53 GMT
ENV INFLUXDB_PR=
# Wed, 28 Oct 2026 02:28:53 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Wed, 28 Oct 2026 02:28:53 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:28:53 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 28 Oct 2026 02:28:53 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 28 Oct 2026 02:28:53 GMT
VOLUME [/var/lib/influxdb]
# Wed, 28 Oct 2026 02:28:53 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 28 Oct 2026 02:28:53 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 28 Oct 2026 02:28:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Oct 2026 02:28:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6565c9d01bccfb0c74fb2641cd90c12ed2124d399960f4adbbeb9dcb1f275f1a`  
		Last Modified: Wed, 28 Oct 2026 02:29:11 GMT  
		Size: 43.2 MB (43189906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b2b2994238d7ca3f84be78a771ffb2e0f64501ffae8ae4291820b00a807d19`  
		Last Modified: Wed, 28 Oct 2026 02:29:10 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6990e8fe502a2559fa044bf888ada8d79cb18bd1a96ad79feaf940dc4e8d06f6`  
		Last Modified: Wed, 28 Oct 2026 02:29:10 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef133225174fd5c5244ba8b3e66760d671cc863b07e8e4ed4e18c80a6fb74dd0`  
		Last Modified: Wed, 28 Oct 2026 02:29:07 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data` - unknown; unknown

```console
$ docker pull influxdb@sha256:e0f900ef40eef0c09b5fe988c4cebf6f74d16210d1c113773f3501c9d6e9db7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4709742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d75302ecbd29d093a3f24fea1decf6ce0b1b0ce7599dac2486826264de3219`

```dockerfile
```

-	Layers:
	-	`sha256:96a46f9d51e5a3ec6ed0c81fffa3e0ad2f75b8649e50afeb092a0363772bb002`  
		Last Modified: Wed, 28 Oct 2026 02:29:10 GMT  
		Size: 4.7 MB (4695588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dee82534761d9ea2499f9db55f6cdafb0a32d21950342d1c12a1c00ab9643e5b`  
		Last Modified: Wed, 28 Oct 2026 02:29:09 GMT  
		Size: 14.2 KB (14154 bytes)  
		MIME: application/vnd.in-toto+json
