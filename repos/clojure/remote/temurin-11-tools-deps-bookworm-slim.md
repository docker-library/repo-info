## `clojure:temurin-11-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:27e727b6fc057a3c5654b88f368fda49b24d6a3766511c0dfed5a11af960c517
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:15061afdac3597114df5b60ba23d4e7fdb77698d1a49c6becd6d60b1ff28a850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240779334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56633e5082dbfc883275f3b5d731aaebb424157d2c6df7aa7fd02111cec96aa9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:45:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:45:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:45:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:45:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:45:09 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:45:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:45:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:45:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdff78ef279d130fbe5c6cb6afa7584d36bb19fb7007e7a460a5d86826e79e7`  
		Last Modified: Wed, 09 Sep 2026 03:45:47 GMT  
		Size: 145.9 MB (145861375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17cd03e96c16d4d1a9da27d40bd0478acb8f2ef70454aa18c7980afe8066ce1b`  
		Last Modified: Wed, 09 Sep 2026 03:45:46 GMT  
		Size: 66.7 MB (66684662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0fc790ca29afe0471a4543d223a7fd343fdff7f2f8899a32dfff1fbdc3179a`  
		Last Modified: Wed, 09 Sep 2026 03:45:42 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:31bd9514bccc53f381db06011505c674fb3c54a4a91ae95b3d8273c3a198b55f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65600243f2a539e0f4dfa54aeae33152364551a72ee4a2b5633ca52d98f7b2cd`

```dockerfile
```

-	Layers:
	-	`sha256:991913d5d1590607a97dff16723df51209726ddfc42bd8c81a35440e097deb76`  
		Last Modified: Wed, 09 Sep 2026 03:45:43 GMT  
		Size: 5.1 MB (5138780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6cd42785ef401dab70321c30fba0d76da1d308fd05b8d12bc54a33f86005efe`  
		Last Modified: Wed, 09 Sep 2026 03:45:43 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:abd3eeb24bfd0220fc114e3fe35bf2ce6bcc9c51f0e1bc729fd9735849bcab43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237367770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb86313ad043b27476310a922c750fb78fc961f8fcb3abad733b64443705e8c5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:56:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:56:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:56:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:56:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:56:28 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:56:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:56:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:56:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bacdad6d78de9abadd4c9f472fb321d01324799117a0bffb2a573f92ecdbd4`  
		Last Modified: Wed, 09 Sep 2026 03:57:04 GMT  
		Size: 142.6 MB (142566281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cbace2b1bff0ac68b187a08f0d7d765b1deb6d2980e0d832966cc202faf9f0d`  
		Last Modified: Wed, 09 Sep 2026 03:57:03 GMT  
		Size: 66.7 MB (66683553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc2fd4e9e48a39ad432672a3cb15f9df399fa08a596dcfcb6ee964568242972`  
		Last Modified: Wed, 09 Sep 2026 03:57:00 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d4443872959bfc5bb96c6f8d2da998daaafa3b4cf9fad12ae092edd219401025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030781d545be87618bdb133f7dccab5d8c695e424bff84164a6fda60d8df98f8`

```dockerfile
```

-	Layers:
	-	`sha256:cb0ed509c8f2ef9a10d76c4a82c49cd236741d5f647b2cd102b5b40deccc05c6`  
		Last Modified: Wed, 09 Sep 2026 03:57:00 GMT  
		Size: 5.1 MB (5145159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6b76bb55efbadd63ebcd70910a3bfc396f97ddfeae37f88ef079f7b2392616e`  
		Last Modified: Wed, 09 Sep 2026 03:57:00 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7113a55df71f3b5a97942d9bca98647ceadbb244615e359bbff044a4e093c294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237666115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f76828f9adae89246c6a619dbd0f5ba43824c0cda3a7890d4836040f1532112`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:35:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:35:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:35:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:35:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 10:35:11 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:42:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 10:42:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 10:42:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7b8bcf99d1d82ffcdadfde51e16544f343446e612d3bf39377b53f15c3cdb3`  
		Last Modified: Wed, 09 Sep 2026 10:38:53 GMT  
		Size: 133.1 MB (133089500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9551c03aa38be29109f1a65e7123a6396e853df8fa3f37d14b0cf703822a65`  
		Last Modified: Wed, 09 Sep 2026 10:43:29 GMT  
		Size: 72.5 MB (72499491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f4d49f38a8b8f1153f1589190d95c8b80e9bb85630bd10f6bb440f1a01b584`  
		Last Modified: Wed, 09 Sep 2026 10:43:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:41b5425449e3fbf6b003294cabe5fa29605328c86ad7af0bd09f4f8df0cdde2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d2b027149815dae85e3a3055c6b27ee674846d55195e16f9921e9695eebb82`

```dockerfile
```

-	Layers:
	-	`sha256:45212d8ae76d66b7108451df19c08ba30c0c1d579099121630f8a60c1fde96f5`  
		Last Modified: Wed, 09 Sep 2026 10:43:27 GMT  
		Size: 5.1 MB (5143323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6976cc260fc64ba15b27f935c38ef0992f84e331da45c93bdbec1447953f913d`  
		Last Modified: Wed, 09 Sep 2026 10:43:27 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
