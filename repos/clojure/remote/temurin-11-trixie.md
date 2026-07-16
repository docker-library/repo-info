## `clojure:temurin-11-trixie`

```console
$ docker pull clojure@sha256:646ba4e0090ca0fa62b0cc79e778bce2d0ba809e1d51981c68e3a41291f6236d
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

### `clojure:temurin-11-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:f684dc095bade7e6e0840ffe9c299b6558e91023be2eb1e010db566187a2dab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277733439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fdd21f15549f9adc59f9d9eb46002950e49b001ca250deee96a334d748e4a3`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:31:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:36 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:31:36 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:52 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a2aa59b1e3809b368567f3c84b6ff2163842e73da6241dbdeadb24d7d0d612`  
		Last Modified: Thu, 16 Jul 2026 01:32:14 GMT  
		Size: 145.9 MB (145886208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a95a1e09b06ed40cfd7acc9d78ad608462dbd2da1caf91ef9555a08d03291ba`  
		Last Modified: Thu, 16 Jul 2026 01:32:12 GMT  
		Size: 82.5 MB (82534015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a432a2536cc5b6a1ed25caf7e4c04665a3507407f7e1720ebb807786a4fead`  
		Last Modified: Thu, 16 Jul 2026 01:32:09 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f3e493d726396133472482e72ea67e7dc8910b053a8a3e7aadbd9891a9f9e010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be6b4fe8564b39c01d56c225c8fc4855f38b3a1d50cb0013c4aa2ed428d92d5`

```dockerfile
```

-	Layers:
	-	`sha256:3ddb0d6742a30ff40e5e11c51492eaad6201eae15331739679985b92a7fdecb9`  
		Last Modified: Thu, 16 Jul 2026 01:32:10 GMT  
		Size: 7.5 MB (7488377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53e410f4c7b1ca684d6158a791a4ff7673d4075260604fba3da2c39b2c171bc1`  
		Last Modified: Thu, 16 Jul 2026 01:32:09 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e7ee5443efe4fbe51d57c79c44d1a073c8bc287cb8806d8ff766f91237db1660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274600925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fff526d19b326da3a230b07d3cd00de8b7fb4b4a2c45e567d3953b4576c444b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:23:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:23:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:23:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:23:38 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:23:38 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:23:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:23:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:23:55 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb2980258f00f789aea69b2b0048c126f9fe3381dfeffc002c1f7d969bc0f8d`  
		Last Modified: Thu, 16 Jul 2026 01:24:18 GMT  
		Size: 142.6 MB (142582169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0ca47e3c35be73a876253577fce5683ce90fc828faaffeb37722282734d480`  
		Last Modified: Thu, 16 Jul 2026 01:24:17 GMT  
		Size: 82.3 MB (82343928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15afd76c12a499f3e68c08204cff2b680c88791af70073f40ad6464a7603bef6`  
		Last Modified: Thu, 16 Jul 2026 01:24:14 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:aac4d5f92036b95422eb96863bcfad8f7c1a8538818f0bb4c5c8b46c8b134d66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7509845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9387f04c73a8d2cb122e8a836dd7bd0ba963fbbf3db3eb71a641884ec2d97ff`

```dockerfile
```

-	Layers:
	-	`sha256:4186880e2cc8bebca2000dba547290ef3e6d3a99c6bd354053a61b1d74e1a035`  
		Last Modified: Thu, 16 Jul 2026 01:24:14 GMT  
		Size: 7.5 MB (7495388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abfce9b888444da78b22f81379f91d0cdf2ad7dcd198db3eb73b59e96dd2047f`  
		Last Modified: Thu, 16 Jul 2026 01:24:14 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:fbd93955620e54e9e0586de08f2fa3310dafaadb0ac34766feeeab6fa7b1f260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274183685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390cbf034b8ad8731b66a8f441336b038c654e91465efc34e2e09d528d32a450`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:14:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:14:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:14:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:14:25 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:14:25 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:20:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:20:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:20:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055440c14dfc6bd6cea316ac0ac444b2bf469ec64a94fb592118a4481ce1ed7f`  
		Last Modified: Tue, 14 Jul 2026 08:18:23 GMT  
		Size: 133.1 MB (133110151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa25f0e9d249f26574049ec1237bb0bdd35ffaae266f5612291aa0d08dfa6afb`  
		Last Modified: Tue, 14 Jul 2026 08:21:35 GMT  
		Size: 87.9 MB (87938877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3737ffd4d5c465435d56b53cedc0a5f38b74952272cef6625373d3f82efcdbb4`  
		Last Modified: Tue, 14 Jul 2026 08:21:33 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:05ba036b1e5c0a38e7bbc277837c5131e854ce55a0f9077da3a9f6a7e72000b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7506569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e6d825bcb21fb55ff4786bc4d8646bd9eb2bf544a24ea51d6c365021b3f9d8`

```dockerfile
```

-	Layers:
	-	`sha256:49824ccb2650e19dc238fe0c99cc04fb8ba2d0fdd28661d7c176e25d35f3ae0b`  
		Last Modified: Tue, 14 Jul 2026 08:21:33 GMT  
		Size: 7.5 MB (7492183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a63b386ac857818d5d006d9e7a22fc9a78da4cb5c3f25a6211b31ed1d772cbc`  
		Last Modified: Tue, 14 Jul 2026 08:21:33 GMT  
		Size: 14.4 KB (14386 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:09e9a570f1f006feae1b88e30ae2a7a33d77c04c77f82ce0e4ba8d8545ad8656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259536416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9cdbc5b6d5ca53d095721ad5ed776b7fd218868fa75370fbb3c3c81c1dd96d0`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:43:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:43:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:43:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:43:19 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:43:19 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:45:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:45:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:45:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29472702e321d0917c3dc2d9bc40ddf844d24f8fc8e588fc2f763899bad6bb22`  
		Last Modified: Thu, 16 Jul 2026 01:44:59 GMT  
		Size: 126.7 MB (126651679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1e999391c4dccf13b60a8534f3c015980bd02932be5110ba838415109d0f59`  
		Last Modified: Thu, 16 Jul 2026 01:45:58 GMT  
		Size: 83.5 MB (83502385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8534ff3c2b9ab1cf244e89226a837c90312b25d8fe6a6e139a6ab8eab38c734e`  
		Last Modified: Thu, 16 Jul 2026 01:45:56 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bbf4b05a7b44c651f25f4fce886020ca25bec36f8d09224c1bd75ce686ca7317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7497687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e3ed380405a69d559fbb0b0f5150752e00150f58bca7014016c95ff3de8fbb`

```dockerfile
```

-	Layers:
	-	`sha256:3b5c52ff23a9a00c395aba5108418847bad6053688fbc2ef64f0dd14966c77e0`  
		Last Modified: Thu, 16 Jul 2026 01:45:56 GMT  
		Size: 7.5 MB (7484303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf029feacbf8e687cbf3c2f6edda0cddbac0acf15f2bacc65fd202a7588d2d1`  
		Last Modified: Thu, 16 Jul 2026 01:45:56 GMT  
		Size: 13.4 KB (13384 bytes)  
		MIME: application/vnd.in-toto+json
