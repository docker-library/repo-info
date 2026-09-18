## `amazoncorretto:8-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:ddf896de743c53d00a5a46a62985bc8717cc7520668cf848870cfe30201270ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6309ae3d159b77d4e48de776e8b11cc6138ab8dc3bb6be018c17141b6d2c128a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104666445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e390ac7915266d49a567da04f35cd4c2abfe924f228abfbc9cbf2ebc4dbf90`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:11 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:34:11 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:34:11 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:34:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:34:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e49152394f0f2042217624a0ffc1db530347b70142750c3543b2440a5295a29`  
		Last Modified: Thu, 17 Sep 2026 21:34:24 GMT  
		Size: 100.8 MB (100817938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bb692014077dc944ddaed11e98eff6d7078080ac5fae3524070c22fa5f284c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 KB (255750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:370267ab6f3a4f1a51c0bff746346a9952738ca76cbc32679b53875867933cb3`

```dockerfile
```

-	Layers:
	-	`sha256:d693997e92939115e4a62bd883e1cd744e5ae39154aa7560e6ddeeb4436520ad`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 246.4 KB (246395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6312cc4ec5561c3c41966866f3d381c7c93b2291127c923eb0cc86c4fbef70e1`  
		Last Modified: Thu, 17 Sep 2026 21:34:22 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:640949f134ecfe2c8a287cb38395923a6fb34663196689ce56a8cf3746e05338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104836831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bca9d3011159006884aa0059c5ab6831c78330300a3f0929d50d8dae16d7f53`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:31 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:31 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:31 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280666cefa54dbe752fc38fdc6b5d118227ecc5fbc85cc6f477fa8028f47eb9c`  
		Last Modified: Thu, 17 Sep 2026 21:35:45 GMT  
		Size: 100.7 MB (100650775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e492bb529d7ea629fef3748cad858bb607af8ee8bbc88e8f327f91e5bcea7e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4ef7d1e3152a21b4ac30709b9ed4633a3c014c672bde95db291032c5fc94cc`

```dockerfile
```

-	Layers:
	-	`sha256:69c2048c8e41975a1b8cbbb2767700781974d0730709b7ec9c7bbb013561701b`  
		Last Modified: Thu, 17 Sep 2026 21:35:43 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:139b163d09e91283078daeef0bd0220c5f699458965af1db94a33af34857acbf`  
		Last Modified: Thu, 17 Sep 2026 21:35:43 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
