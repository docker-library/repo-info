## `amazoncorretto:26-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:c5c1618abf3e08038198acf6aeb4297c548ae3d978201eb231bfe20036feffed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0e7ecbd83ce77b10ec242cfa2c52b943815468f155fc3093f15b9a962e0b6c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189138196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3dbeaf31dd258a300d22030cae132cc78b4a7f3db66d11af88cc520c973bd84`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:33 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:21:33 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:33 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081df8109226b529c8367f5d849b4c05b21a2362f9a0e6762bbafc0973c3222b`  
		Last Modified: Thu, 20 Aug 2026 17:21:53 GMT  
		Size: 185.5 MB (185491321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e88d0f9f020d73ae01e2a3d439330e7d74dd7379f8a6995299fba4829da6edf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.2 KB (600229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b86815e1bfbb968e20314e8806e6df3cb6791aae74ea740c417f688f8b46149`

```dockerfile
```

-	Layers:
	-	`sha256:d6d97a2c3757837227b45d77d6545f8561c92e25712c2bf73068a96d3328dd1f`  
		Last Modified: Thu, 20 Aug 2026 17:21:49 GMT  
		Size: 590.9 KB (590857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8904eb719f849d9a4cb11311d9a13348cdaa20e85c14381a149aab8e75fb5da`  
		Last Modified: Thu, 20 Aug 2026 17:21:49 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5706be0d5f6fdc3c900bc6fdbd5ef98a7d84b5be352a86bca2a44411c5b6c60d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (186997632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425fbda6b724bfa2bd7d70e51f5ff6758df59b7dea0358a51834bee500ed00ee`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:06 GMT
ARG version=26.0.2.11.1
# Thu, 17 Sep 2026 21:38:06 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:06 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bfb22489bf7000fc83ec99b4d172aeaeb8de4c90e7fa17967523b1d564a145`  
		Last Modified: Thu, 17 Sep 2026 21:38:28 GMT  
		Size: 183.0 MB (183023131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fabe4cdccdefcce96855e9fde931067711fea07c1979a39f188a2d7166d64657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a1a95ed47ca513a295f083f32727e3a193602b09b62101766d4014e2502a89`

```dockerfile
```

-	Layers:
	-	`sha256:cc19011f8b423c78d66781afb1c9f2141c461c73706a1ef7509218e1db9958bc`  
		Last Modified: Thu, 17 Sep 2026 21:38:24 GMT  
		Size: 590.3 KB (590273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d4898abd18bb59c2bd13dedf5a50804d519db6b617cbafd54648c450207276e`  
		Last Modified: Thu, 17 Sep 2026 21:38:24 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
