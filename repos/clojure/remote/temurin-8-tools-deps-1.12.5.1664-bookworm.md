## `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm`

```console
$ docker pull clojure@sha256:68b0afe72bff46fa83e0d6053e25a0474b6ac816afbb44db18d44b5802108aa1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:cc062b542e5d40e90c6771f7f12e7576171712979b1617ba4fc4a272cb9745ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181840785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde194ccf8f60993ee7f79193f632d4c804da080970420878e29fe0c1324183a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:53:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:53:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:53:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:53:10 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:53:10 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:53:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:53:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:53:23 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febb4255fe3d1eb3c8519e1fb96ff809b9c00fd67d156d97d834f9573163f183`  
		Last Modified: Wed, 29 Jul 2026 17:53:40 GMT  
		Size: 55.2 MB (55198726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d218aa13ce2056176d182a53b77bddd0dea7bf041df2bbcea42db92a25a3fd60`  
		Last Modified: Wed, 29 Jul 2026 17:53:41 GMT  
		Size: 78.1 MB (78144008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5428cebce277191f994a62938a01d54e8e5728a3b6af28f6de4c32b5d9f2eee0`  
		Last Modified: Wed, 29 Jul 2026 17:53:38 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:df7a4b7844e050eaf0ee5827bb689e6ef8182f6101df0a2035898953836a4e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330cd483ddf19d9097603593d3e75b688dcb319fa6b01504ffd1d0804f7bc939`

```dockerfile
```

-	Layers:
	-	`sha256:b2259ce69c9a7b20b0f7168c5bb81ffa6a5ee6410127e910c6f6b9b2a2554699`  
		Last Modified: Wed, 29 Jul 2026 17:53:39 GMT  
		Size: 7.5 MB (7496530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:768e53a11e6b82111024e9fc70d0cd13dc219c34660eb680db6b0be88f7bbfc6`  
		Last Modified: Wed, 29 Jul 2026 17:53:38 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a9c9bc0db56479c16b4b813d3069a8d1b275b7f5e6de9c0550086ed51e79647b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180786478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923cdc110d77c401744f03134465ae3f753566e2d416a7e4732c8196bd91d2a1`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:00:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:00:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:00:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:00:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:00:38 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:00:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:00:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:00:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a868f2d57e04ff7a612ca041995f8e9a1d6363ca9e6259c4165a7dabbdb9b55`  
		Last Modified: Wed, 29 Jul 2026 18:01:12 GMT  
		Size: 54.3 MB (54272904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a465909c1de48cbd907e13715f1aad96a6e8959eb4878fb3adbfaece34efeb7`  
		Last Modified: Wed, 29 Jul 2026 18:01:12 GMT  
		Size: 78.1 MB (78129238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ef1ead98a013e4127ebe952bdc2c9bd02269505ef0b34c784d03d4f17156c4`  
		Last Modified: Wed, 29 Jul 2026 18:01:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2655b26c6ca28dcabca5128db2d47f3d25ade4faf825bc48734ea16c789e1ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692384767f7906ab5d5ea95cbbea19c268e4600ea8db2f81ce19bffaa644c286`

```dockerfile
```

-	Layers:
	-	`sha256:412dc307a813275ab1235fc7fd16e0bf301bf4f53509e0c05649700d697270ed`  
		Last Modified: Wed, 29 Jul 2026 18:01:10 GMT  
		Size: 7.5 MB (7502993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7e65357100af3e983c1ef1d15534b57514808a8279af71abe91c01d0bb8b380`  
		Last Modified: Wed, 29 Jul 2026 18:01:10 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:51b24d17b81cc038aef9109bd707f08bb857a65437bcbe54efd1a96c2f0a8a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188985277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30c8583be1781a53755a00846681c2d8304a81c7bec42f40386662d75909f03`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:49:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:49:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:49:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:49:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:49:37 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:50:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:50:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:50:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8581cd24ef6316cf35f92c433d8b4318bf9f2641a565f865a7caaa28ebc5075`  
		Last Modified: Wed, 29 Jul 2026 17:51:11 GMT  
		Size: 52.7 MB (52669139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499887beb7f167b993249f4b0daa1550bb8a5b09a933799e6863165518a58b5c`  
		Last Modified: Wed, 29 Jul 2026 17:51:12 GMT  
		Size: 84.0 MB (83973658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5965b3ec912f3cbdfe037adfde55af891b5c26ac66653fac6b727cc44ec955cb`  
		Last Modified: Wed, 29 Jul 2026 17:51:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6ba00078f7d1c43fdbc246be717f6b079cb32e5c4333df74f00c96a3aa1a0d74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffff3f6d7bec21839d72875e540d05913051f26a0acf55631d41510bcbc1716e`

```dockerfile
```

-	Layers:
	-	`sha256:fedb3e6315db9ec92af8dec9dc64b06e4a04f2ee145d5e9a15effc1bdb0cdb55`  
		Last Modified: Wed, 29 Jul 2026 17:51:09 GMT  
		Size: 7.5 MB (7502341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82c674e0b2553a037e4fcce2c671136e912de7b4992379ceae1781f3f3802569`  
		Last Modified: Wed, 29 Jul 2026 17:51:08 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
