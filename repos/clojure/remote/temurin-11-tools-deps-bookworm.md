## `clojure:temurin-11-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:19df5b7dccfd39ca03781c14cd587ab68a7efece9ddb8e2fb11cedc19607298f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:80da91465865bbdd1209543f1540c0e52306f2ab5c6d31624b99b9eefc4a0400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272514048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b6fff2af2e12cc9f7ba1be9458585f657d7b2647f61b0ebf99ab8df5c959ca`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:48:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:38 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:48:38 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:48:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:48:51 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:475532fa45d5e1da732ecec5e02e74cf3e35397e1b5506d34d4796a3636924db`  
		Last Modified: Thu, 02 Jul 2026 05:49:14 GMT  
		Size: 145.9 MB (145886155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38aad459da0de3fffcaaf3ca971bc12338b972430011095c17729b08afa9e2a`  
		Last Modified: Thu, 02 Jul 2026 05:49:13 GMT  
		Size: 78.1 MB (78125035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebd993c27eff3009c2a215526356358cdba9e63523064f76cff6e76f29ac54c`  
		Last Modified: Thu, 02 Jul 2026 05:49:09 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:edbdf9c1c51d33f6fa4dcb1692ff555317e385ee1cba8dda7a3a241d51d3e7c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7410012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067b7e796b4bb3ed51a82a27ec46156f817f07bf11f017673d3d450c79caf058`

```dockerfile
```

-	Layers:
	-	`sha256:a0ba50dd18a7a8f5b4e60cdf6ff15637cbcc44fb38c5997f1de71e23f8bf6250`  
		Last Modified: Thu, 02 Jul 2026 05:49:09 GMT  
		Size: 7.4 MB (7395650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:204d56913bbf59ac2572ebcaa7ef1dbdb8ed928f2493a2610b24596ca1d881b6`  
		Last Modified: Thu, 02 Jul 2026 05:49:09 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a55163b3b061c6bddd94fc47c0ecf1ddd9dfc061d7b1a4a5e67f538b917e4ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269101519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec21d65535ec57597788a947f16ac4f4716494820f8a43b21c23d9da2b4e8435`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:49:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:00 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:00 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:49:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:49:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5475ec79162b5be93f45e7d8c9d8eca79cb3cb0ba58e63d25df5df772fc15ed3`  
		Last Modified: Thu, 02 Jul 2026 05:49:40 GMT  
		Size: 142.6 MB (142582228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0121b05fc2544a595245ebc23209ef1419d293843fc10ae3e1a0b87f4b8d18e`  
		Last Modified: Thu, 02 Jul 2026 05:49:38 GMT  
		Size: 78.1 MB (78129444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72168421abebde9e0fc991bb7a72d61edddc3c173bbeadb7bde5584de3e15a0`  
		Last Modified: Thu, 02 Jul 2026 05:49:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:18780006c8dd5be6c27bc8bf37d3b960d0732701d265097215b71996b9be1661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7416512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d70e2f4199142e82609808a7bbbbd40d61fb2a6383a39550388cbb8693edb9`

```dockerfile
```

-	Layers:
	-	`sha256:5883199fb9c7691e3615e41711fa81a369f459b2e527b408a946a68f8d63efad`  
		Last Modified: Thu, 02 Jul 2026 05:49:35 GMT  
		Size: 7.4 MB (7402031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:387cf87a9d5980c8da43ef833ddae6129dec50591df36dcdbfb6a5ce68e246a9`  
		Last Modified: Thu, 02 Jul 2026 05:49:35 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:e678b17dc620f4a398b80e2cac611118434dbf32f1963de1f911b0407692546c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269416083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70a5fec36dee82200faf19c2507e3fdb99c0b633624c833bf17cb551df897633`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:51:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:51:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:51:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:51:01 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:51:02 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:00:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:00:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:00:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299e65171f72e6722fdd5ad9801a6dff8d9c2278fb4ba6fa0faffe6c5ecc7f05`  
		Last Modified: Thu, 02 Jul 2026 06:54:25 GMT  
		Size: 133.1 MB (133110143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49b802f43d8589425fbc94c1168b4d35e1726ddf2e412358a95de66eb2bc3ed`  
		Last Modified: Thu, 02 Jul 2026 07:01:23 GMT  
		Size: 84.0 MB (83958446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72650fc4fd613bb2a6498a91ef2ea5b4d63387f57d8d170ea623d16c3a1af23`  
		Last Modified: Thu, 02 Jul 2026 07:01:20 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5a5e931fbfcbae3e591214c2a14119afcc3f05083d74bb354cc7ca339c51a004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b70e92452ad385b69d6697948acbdff5e843db085a9f0c14dfac95b69b2998c`

```dockerfile
```

-	Layers:
	-	`sha256:c0e2d3523aba727dbca3879eaefc60587079cfe35e052d8d6f4bb2fe8fc58608`  
		Last Modified: Thu, 02 Jul 2026 07:01:21 GMT  
		Size: 7.4 MB (7400251 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:287007c1e27329f5e6055ca63672d2ffc8e9b162a78eed7df55ff16a2c045d5b`  
		Last Modified: Thu, 02 Jul 2026 07:01:20 GMT  
		Size: 14.4 KB (14410 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:ee5c8cd7e022de6c95290aec62a92a5aa8d264a0bdc051d4164c1a9c4250a788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250742963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfea6e2ed1d3cdcf8f6dc91e39930a7a184ed45326adaad3fd2d94251510735f`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:45:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:45:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:45:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:45:47 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:45:48 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:46:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:46:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:46:01 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026cb16e43ca20aaf357c2fbadeaf6a1be1611b7bc1b6c07feb07721f22637ee`  
		Last Modified: Thu, 02 Jul 2026 05:46:31 GMT  
		Size: 126.7 MB (126651528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3503ef6ee9c29954ccd19d0d3317874cb5d3a5f6dcac14a373a4fa6882c031`  
		Last Modified: Thu, 02 Jul 2026 05:46:30 GMT  
		Size: 76.9 MB (76929113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d06af7819b82510b185ec1a4345c3b626ae5ab6b9c427c70afc97c8564cdf8`  
		Last Modified: Thu, 02 Jul 2026 05:46:28 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9d0bb892e3699f1e2ed2d15a6406f4d9fd5031379282d6f9bb2d59a2222bff6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2bfaca69be6c9f5a800df0a82fc8bcdab3e85ef38bc8f80b33b166e5a7e5949`

```dockerfile
```

-	Layers:
	-	`sha256:6311776a6c32a331008974108a5d38a8bc65cd3c76c336c454f6190fa00dab35`  
		Last Modified: Thu, 02 Jul 2026 05:46:28 GMT  
		Size: 7.4 MB (7386973 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab10ac1372e6e714eb1da67ef4bf681c86a8e9b2d3056e5350884bf5e7cb87d4`  
		Last Modified: Thu, 02 Jul 2026 05:46:28 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json
