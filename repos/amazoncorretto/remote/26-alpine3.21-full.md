## `amazoncorretto:26-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:1c9c6aebd790036a75067012cff6d64ec1387d26136f0d6eb6e0268df0966cff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d50a57b93192519dec785b8a66570b02cd6a2f49219a65f20e7ec1e8800d54de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189117286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:084f024aa88b37c6ad5001287d2ea2d2d0c0baf2b81be735d0dc11d310741f95`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:02 GMT
ARG version=26.0.2.11.1
# Thu, 17 Sep 2026 21:37:02 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:02 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5f6a01e2c543bc874d56500bb59f697a2137162f00bbd5a1c2d28db4686a5f7`  
		Last Modified: Thu, 17 Sep 2026 21:37:22 GMT  
		Size: 185.5 MB (185491266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:38001fd418b77e831f34c8ca9d014787c529cc5c386ec8a381933982ff8466f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.2 KB (600229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86571bab01f1309008c6b59a793de6bb3d9e76b41d32da05311f17e6e06f9b62`

```dockerfile
```

-	Layers:
	-	`sha256:49c680e1cfc9aa110e30609f1e73fcfe36327a3126865064828a8cd8de0e5100`  
		Last Modified: Thu, 17 Sep 2026 21:37:18 GMT  
		Size: 590.9 KB (590857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a094662dc408dc9dea073a995a3774ca4adb67cf2b30956842a7f409a19aa78`  
		Last Modified: Thu, 17 Sep 2026 21:37:18 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.21-full` - linux; arm64 variant v8

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

### `amazoncorretto:26-alpine3.21-full` - unknown; unknown

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
