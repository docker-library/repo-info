## `amazoncorretto:11-al2-full`

```console
$ docker pull amazoncorretto@sha256:8aaa5313fbd422e5cf30194b4c429b821d63eeb976febbe21902f391df7e0c3c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e0bd42605469ce23a6519a8ea4c1fee4079623f3c7b35ac72ac03b95909cbd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211195859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13603dd5788c1498b491f4ad72b0ae9574d3c18b7c48207bb96882b1aa266dcd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:38 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:38 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:29 GMT
ARG version=11.0.33.0.10-1
# Thu, 05 Nov 2026 19:58:29 GMT
# ARGS: version=11.0.33.0.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 05 Nov 2026 19:58:29 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba9290c2def6f106a55d735184d538495848ee23b5b4b308b76645ee43af1b6`  
		Last Modified: Thu, 05 Nov 2026 19:58:48 GMT  
		Size: 148.3 MB (148257006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1ca6b0c1e0648de17a61b8f90e7c397668b1293295dc37eed504887883ee4ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f204a575d0571b1e1a4e028d8960b0504b2cd2284df71f0dbf1936d3c5fb2df2`

```dockerfile
```

-	Layers:
	-	`sha256:6a0c02d0ac7f8310074b7e76fc394636e47426782d69eaf4a628b576eba0ff45`  
		Last Modified: Thu, 05 Nov 2026 19:58:45 GMT  
		Size: 5.5 MB (5542836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:998d481dc2e99524becb6a8f7aeb686947978ca21107d28d0168fbabf0144b19`  
		Last Modified: Thu, 05 Nov 2026 19:58:44 GMT  
		Size: 10.9 KB (10911 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8e2af66ae47209e37c7e4d2b70f60a689916bb07ae5970bfb8b33ef86b0793ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210251165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b76ac34d2eb6952c2f6ef5044598bea60af672ac897c0e5ac8598dba257bbf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:41 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:41 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:14:53 GMT
ARG version=11.0.33.0.10-1
# Thu, 05 Nov 2026 20:14:53 GMT
# ARGS: version=11.0.33.0.10-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 05 Nov 2026 20:14:53 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:14:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74116c122cffbba4544caad69830b7c4781c159885ba3ad1e0c70f44d0fc3aab`  
		Last Modified: Thu, 05 Nov 2026 20:15:14 GMT  
		Size: 145.4 MB (145445207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:46c37f4989f971d7199eb1fa75c2999e52d88f2760c0a43e35c950bcacb4388e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a0317b345b3cc70493851f4cb94ca2a2d78d9aa98d87504392c31ad719a41d`

```dockerfile
```

-	Layers:
	-	`sha256:7b38c189a5bbf5acd31dee548f65a536167705eb538762b24161ed9bce10cb93`  
		Last Modified: Thu, 05 Nov 2026 20:15:11 GMT  
		Size: 5.5 MB (5542318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46abd8351ecdf773c5ff167a627c40c082de23e9a45fae90736af88a9af0b506`  
		Last Modified: Thu, 05 Nov 2026 20:15:11 GMT  
		Size: 11.1 KB (11050 bytes)  
		MIME: application/vnd.in-toto+json
