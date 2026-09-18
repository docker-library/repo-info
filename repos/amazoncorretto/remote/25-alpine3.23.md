## `amazoncorretto:25-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:b76692a1def69211fc64d2ae5d9695608974ef792c52fc8362d5236c1ef4d974
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:45b98216f649c72ae6662b5240a5db35670c0fc5acb21cdc3ee4f5cf22dad401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185341434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a917774868bd0d791c49c797be5298470770fc20d6c16401b78017251c23934`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:23 GMT
ARG version=25.0.4.8.1
# Thu, 20 Aug 2026 17:21:23 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:23 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873aa8214c4a9e47508c948a6aa7ee3c7214c81a3270b835386708f04e42c96d`  
		Last Modified: Thu, 20 Aug 2026 17:21:45 GMT  
		Size: 181.5 MB (181497013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6964f23197a23a7578a90c246885127f174232fa8ec452292532f0a7c4e0f4d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.9 KB (600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b0de415c26196795ba020590592b775f356f7dcdbf6825acd6d905d03b92e0`

```dockerfile
```

-	Layers:
	-	`sha256:9fffd637d627edd201e5893617d0c04c71a1b96b4e2a9c55872b07201bb606e9`  
		Last Modified: Thu, 20 Aug 2026 17:21:40 GMT  
		Size: 591.5 KB (591504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:093a539884e090f83e64f6ef1817f037585ff264f4f108e022e6146182347c72`  
		Last Modified: Thu, 20 Aug 2026 17:21:40 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:02e021c1cc9c39d63bbe3eaa59d6b87679fa70140cd81ad3fe1838c9ee6e5ad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183260966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccd754ed2381645aa44f630227c698d37451064845b76bcd189eb4842700793`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:36 GMT
ARG version=25.0.4.8.1
# Thu, 17 Sep 2026 21:37:36 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:36 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67000161d818b00e1b760aeccf462da9a9d66408abbdb91846293ce6839718fc`  
		Last Modified: Thu, 17 Sep 2026 21:37:56 GMT  
		Size: 179.1 MB (179074910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8e0d7847f69ddbebfaddb63440938d08cafa79c31490d7f480287ddbf8a48e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73d77622d5f7dc4f9a4fa105107af083fa0cb4b767694dfa7763b876a6855ba`

```dockerfile
```

-	Layers:
	-	`sha256:0c870665753170f705d4b8ecb08cad17349a859bd3b32e7e1454b923077bd979`  
		Last Modified: Thu, 17 Sep 2026 21:37:53 GMT  
		Size: 590.3 KB (590270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97aec74aea42332d0e1c1f5078691163511dd9ab2e8fb1bfdb60342b04adc187`  
		Last Modified: Thu, 17 Sep 2026 21:37:52 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
