## `amazoncorretto:8-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:1b7b8748ab084f141cf9f4f2caf9007ec970a1dd23303844f7fe9ffac8afb500
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:edc15971e61f9274fa9e214a49ebcea8744c1f6fb5190cac07b1837b049c22b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104492773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4355e728017e2f5fba562c997539f22a69b40cd358787a482d0ede575cfadc10`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:06:58 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:06:58 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:06:58 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:06:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96936879f1342cecd31acf4a88196f246935c7fe97f9176c782a44119cd1d3bf`  
		Last Modified: Fri, 23 Oct 2026 18:07:12 GMT  
		Size: 100.9 MB (100867378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c43fe7bc9575beb58ac41c5d7f57fb1dd4dd6c3965297ee67386cbeb30a493ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 KB (260288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82af746183932b3b761c41076ec00043f98a36b70dcf4261031ee53fc80b72e`

```dockerfile
```

-	Layers:
	-	`sha256:75b0d739ec4ab0aac69ff7b450017577f9df8c15f1202d514582b0910c1312ad`  
		Last Modified: Fri, 23 Oct 2026 18:07:10 GMT  
		Size: 250.9 KB (250933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c54d89425b565e037debc745282e3ba5ddc5f2ab526a5c00211942ada2c6fc95`  
		Last Modified: Fri, 23 Oct 2026 18:07:10 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5165e0751aa78180cb3105577772683f98b4ce913abb692b72a40445b6c058ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104671337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13ea0f16eccdb4c962d922650a85366068d9a092841539a88ae592a99cdde3d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:06:44 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:06:44 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:06:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:06:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c15b5b4f6364201137ef4a8cd436f9de8cd10881047b222418720310adfbd4`  
		Last Modified: Fri, 23 Oct 2026 18:06:59 GMT  
		Size: 100.7 MB (100696966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d882fe1fb2358391ee6914105fc6fb2d6850812ef22fda1c6fdacf7f5a7ccbf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 KB (260524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e18e5c6acdd02e39ca7ed502802856132fef577368ef6616cd82feaacf10021`

```dockerfile
```

-	Layers:
	-	`sha256:a90143ec70fa07d0b7d856edef6ee356d8e0a252e5a89ff759bcef5040594525`  
		Last Modified: Fri, 23 Oct 2026 18:06:56 GMT  
		Size: 251.1 KB (251065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d96e5b3e9bcf89c44b5cdff19916d0d6a853071bb361a8912c9d95097593f2e2`  
		Last Modified: Fri, 23 Oct 2026 18:06:56 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
