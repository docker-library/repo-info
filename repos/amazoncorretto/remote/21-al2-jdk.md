## `amazoncorretto:21-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:edb6b3e12b360c67d9bd8ec8b4106ce9285603e0f436e58b74da1fa32da5a378
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a4587731e3280e0097cbf06de1e2fb6310120840a877a33a2f719ac97a283048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228713662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04e71ac2f18ddcf04595a2116a47cf07fc5d6d5db859a6e9f86e137a30b842f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:44 GMT
ARG version=21.0.11.10-1
# Sat, 18 Jul 2026 00:12:44 GMT
# ARGS: version=21.0.11.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Sat, 18 Jul 2026 00:12:44 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b904a573a701c3faa408c9b8ba191371acf471dc8c988c25bbad06f37a05551`  
		Last Modified: Sat, 18 Jul 2026 00:13:05 GMT  
		Size: 165.8 MB (165756367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fe9d965b93d0bd4b87867bfd7ff53d9931fa836329c9766a22bc985721b7f29d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc237388a0b6b70877da55a395a23a776d42d64bc15a2744eaaad3fd89cfd04`

```dockerfile
```

-	Layers:
	-	`sha256:3200f7c184f77751c801786ba531f3c800fa9245282910bb5d538a94d4add9c2`  
		Last Modified: Sat, 18 Jul 2026 00:13:01 GMT  
		Size: 5.5 MB (5536520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da56f3f7f22b1329145c05617bf3026e58a8179edd4265015081f3526f973826`  
		Last Modified: Sat, 18 Jul 2026 00:13:01 GMT  
		Size: 11.2 KB (11213 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fbd785daf4378011458e068393e2c2d2bea032b409888315f499dac356069dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228647279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238505adcea22f4933deb8a1f31f1dc6d59e4ec47d447af13532c34f3baaa234`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:35 GMT
ARG version=21.0.11.10-1
# Sat, 18 Jul 2026 00:12:35 GMT
# ARGS: version=21.0.11.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Sat, 18 Jul 2026 00:12:35 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a940540fa50602b6a230f801a4aae9777404f7def14037518de34b4df46eda3c`  
		Last Modified: Sat, 18 Jul 2026 00:12:57 GMT  
		Size: 163.9 MB (163857030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9404a02bbfaaed31ce164af3dfae2a1fc5761f77867dbe541923b42d68e9f403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36486259ffc87b5c29867966e93ec5de3eb875141f97d9119eba18fb1001117c`

```dockerfile
```

-	Layers:
	-	`sha256:15638e9e2bfb411452813c0688010af4d0dd58c7e11b8243e94392035fedcdf5`  
		Last Modified: Sat, 18 Jul 2026 00:12:54 GMT  
		Size: 5.5 MB (5535209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f8711fb48f753c5c5a2057f8f73ba55ef1989b8a23e9d5a52630a42aef10be`  
		Last Modified: Sat, 18 Jul 2026 00:12:54 GMT  
		Size: 11.4 KB (11365 bytes)  
		MIME: application/vnd.in-toto+json
