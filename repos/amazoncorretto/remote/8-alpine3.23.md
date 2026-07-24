## `amazoncorretto:8-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:0cfecaf063306582d95dc21e1a80f90054dddd1e3b554e4d15bf752b97dcf333
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1be32090fcabe102721a4aab5c1c05275142cd1361507c5d1f29f0e28813fa9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104670205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a9669830b15d4042fbdc206311939db8c722667e54de3fa6b464e3b58fa13d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:10:41 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:10:41 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:10:41 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:10:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905bacde9a8449bccc49d3878d579f29b4d1e900dfcd289afb770b8b33985099`  
		Last Modified: Thu, 23 Jul 2026 23:10:55 GMT  
		Size: 100.8 MB (100825784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2c3cf8464b5cd73392582cd47587e98582e951f69fc5ed7925075098bed2aa48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 KB (255750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285d902d80602cde2358b9036ca4cb1c5d2732130fabb65064c8f21a1406fbc7`

```dockerfile
```

-	Layers:
	-	`sha256:79482091a14520d609451ff56efd9118f4c95d1c0fa3e17d268d6df5b09648e9`  
		Last Modified: Thu, 23 Jul 2026 23:10:53 GMT  
		Size: 246.4 KB (246395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25af74fc7eb3cfb287f45e69040763e344e58a530e4ad9ce283dc3565774a12f`  
		Last Modified: Thu, 23 Jul 2026 23:10:53 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e1282247b373227399767adb2e127a81720edede670d2144f5106c09eac28102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104839471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee07c9c8075e048a9d1da014d76bacda84d49d186678f4d4026792c1ef162867`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:21 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:12:21 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:21 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd32d3d7e5867e862ac8ca3befb93c94d6e2d3f3eda56f42d28a0e0ed5f7179d`  
		Last Modified: Thu, 23 Jul 2026 23:12:35 GMT  
		Size: 100.7 MB (100657611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6b5ee33c8509f8c82eed9a1402cfaca5b629283774bfa816826d8aefad935961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e68f8d7573b991e739073f797150a2c5ea3649ea06d79db1e0508d5349bb3b`

```dockerfile
```

-	Layers:
	-	`sha256:16a0b94326224ffd9f6d22a74da2f0b610a94533648e3da084ace67d3e089b52`  
		Last Modified: Thu, 23 Jul 2026 23:12:33 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16e73949b54836ed939dbec930a6a7d2253463a25e73153b8ddb101a67010255`  
		Last Modified: Thu, 23 Jul 2026 23:12:33 GMT  
		Size: 9.5 KB (9458 bytes)  
		MIME: application/vnd.in-toto+json
