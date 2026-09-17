## `amazoncorretto:27-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:dba5c1c9e5d69adc762a955c25ac3b9974a955457306bac59368e37c16ded6a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:550aa9faa1ea0975719d316660e46c2b274a97f89f57d11e14f162ee09c6c932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187216753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71909aaad125f6e5c8e091df51f916c969b0f582788e26cad7b6f70c12258171`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:40:03 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:40:03 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:40:03 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:40:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:40:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ecf58e2ae494b09d38559e9c9399364693b1d9ea4f03306493258e38ff09043`  
		Last Modified: Wed, 16 Sep 2026 23:40:22 GMT  
		Size: 183.4 MB (183372332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a5fba251dbdc8968b878f80144da9cd2ff8981a219902a3f937a4308f446dbe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.4 KB (586429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8271cbd4b0d875953220f3ebd565588a5ea5b4306c3cf269654294d9df44d5e`

```dockerfile
```

-	Layers:
	-	`sha256:a93bf35654eecff78b6cc0c46282cdff736f27ae1ca2e06c5320cd8d7fbbff7f`  
		Last Modified: Wed, 16 Sep 2026 23:40:18 GMT  
		Size: 577.1 KB (577058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70eb752e6b696f975668b2cd255811e62ef17f9c7c5b036f371b2c4afc0df3ee`  
		Last Modified: Wed, 16 Sep 2026 23:40:18 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:861bbb12d501950b4eefe4a5d3859a39a96dd0353dd60ded7008eef5f84ca949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185183758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fba9cc86b1564a2ee690e900fa317dc0470ba5213b517341059570e95ec15ed`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:43:07 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:43:07 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:43:07 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:43:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:43:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e1699c08a9106de557b6d3f7f4e63570eaecceea7d21ec7244d54db3c621ea`  
		Last Modified: Wed, 16 Sep 2026 23:43:28 GMT  
		Size: 181.0 MB (181001898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e60055a8abd5520fce6452cd95e51fb57807a385d28cc1197be56e81408cd3de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.3 KB (585300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8496f361e815bf6816291464550d065e56fb72c1aeb1034052081649f4be99`

```dockerfile
```

-	Layers:
	-	`sha256:52882fc374083ac109f91ee8556257fc234b69b1f9dd7387079652e3c3f56b0e`  
		Last Modified: Wed, 16 Sep 2026 23:43:25 GMT  
		Size: 575.8 KB (575824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39a210a8a37c33a5fb53ac4031a8fb037777b80a9e3435ca8f1d4783f7a5af46`  
		Last Modified: Wed, 16 Sep 2026 23:43:24 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
