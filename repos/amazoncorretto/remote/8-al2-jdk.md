## `amazoncorretto:8-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:0aa443b8ca6a35ce4e5403842d6948d051f1dcc2b46c48116eb2f68c9dbc89db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:10f11e1e937dd07f623198078643fba46bce395de00371e0598b0a331fccafb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122956651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b1c8d42b3518cd2a48a7e170ec76e3644478ce07dca75122c2683cc5cf687d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:22 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:22 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 18 Nov 2026 02:45:22 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e1a61ab6aaafcbf9e3f9408937a36de431edcb57b628a9418b585d18d7ef66`  
		Last Modified: Wed, 18 Nov 2026 02:45:37 GMT  
		Size: 60.0 MB (60027054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5bd9bb6a0b78a68744711b7a7abaeb03bf87ffb49706711baa9c08df68434031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22d71d7e18af564b3b47973f5bc776e61a669a7d20fa60b79fcab0a2eb39578`

```dockerfile
```

-	Layers:
	-	`sha256:dca1b9147d01d58043e4e94838c2678a64e214a6371a7e7db6c19deae29e297d`  
		Last Modified: Wed, 18 Nov 2026 02:45:36 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c41b1e25c1a3f51610c33ea74298ba387159f620988b0a5ebf0b53e91953cb78`  
		Last Modified: Wed, 18 Nov 2026 02:45:35 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e677b0a992087e999691ad7a1cb1cf315da4daf8d0c0230b26b1fe768c3f2ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124688731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2fa45f7efd2ca72ac29e588c824c6788959f2a3ec46e8124b030bbb383361b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:25 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:25 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Wed, 18 Nov 2026 02:45:25 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593022955534f058d6456878a71f683b7a2b341dd73e55b11c63f2bcadb62c57`  
		Last Modified: Wed, 18 Nov 2026 02:45:40 GMT  
		Size: 59.9 MB (59912329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2672baf81293260b049baef9ee88711f220c8f64b42a57ebc6b7a3284699111c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b15cbd65c2831edec977cccfd64ab3358e9bb37cd928ec21f6c54b2d3958d24`

```dockerfile
```

-	Layers:
	-	`sha256:dce0d363638e205375146318b3f3adc6021a1d46eaaecbe8b8c890d291ce2284`  
		Last Modified: Wed, 18 Nov 2026 02:45:39 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3bf6610c26f8717eb488f5a16749d1ecc3a778ea11c96a4cb9267eedf9b163d`  
		Last Modified: Wed, 18 Nov 2026 02:45:39 GMT  
		Size: 11.0 KB (11049 bytes)  
		MIME: application/vnd.in-toto+json
