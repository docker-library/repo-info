## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:1c39e620b082097304b3b63b89529c51a1ac61438a533b97bc2da6002d5c3ab1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f4d4405ea89b524d5d0fa6b73bea6183cf31f3c013508de3994511ba8d76a24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240779503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39ec5f8692a2efe5d10b8fe550870126f63df8beeb1506759ea4e94da7eecc5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:32:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:32:46 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:33:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:33:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:33:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04501b0fa8d2115b353b852dafed7b8e8bc3cf2d82ede7907ed1383100928e0d`  
		Last Modified: Wed, 16 Sep 2026 04:33:22 GMT  
		Size: 145.9 MB (145861350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa5d36f12df3034cf04f686332f86f69568705176c54c808730d9b7d67e5aef`  
		Last Modified: Wed, 16 Sep 2026 04:33:20 GMT  
		Size: 66.7 MB (66684852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1395f93dc05a9ebb021ea7940c3406c35685d129b1665b32aa2eb5467b67bcce`  
		Last Modified: Wed, 16 Sep 2026 04:33:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fcca525646b774264487f80c27a303853e7649664ab34d062f867762e902d90e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dee981be8df500cb3fbbb5f2e8f8cf8296d58ffb53ff739acf417b509350b72`

```dockerfile
```

-	Layers:
	-	`sha256:279264457202aa32e2d6f7284b679a4bb212619f8b5761d392d58bb1b315ae18`  
		Last Modified: Wed, 16 Sep 2026 04:33:18 GMT  
		Size: 5.1 MB (5138780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a81ad9c8b51fac776a4f90120d57aebfe86d414cb93b2f1a7d7b9f71954851a3`  
		Last Modified: Wed, 16 Sep 2026 04:33:17 GMT  
		Size: 14.4 KB (14420 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3ec8a9867d31efeb53f12137aceb5b4d6630fe624066a3142a9ba6566d3bd14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237367832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:501f41eae14ca76f05aea40b9e001f4f9e3f1a245d7f294700f38c66af660499`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:33:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:33:09 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:33:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:33:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:33:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebcd8313ea2f9594ada51fbeda601eeb365d8258ff500048bfe9e002d507932`  
		Last Modified: Wed, 16 Sep 2026 04:33:48 GMT  
		Size: 142.6 MB (142566294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1980372d18d544bf5a833c4b31acba2c37df9c1d526850866c1251bdc474d28`  
		Last Modified: Wed, 16 Sep 2026 04:33:46 GMT  
		Size: 66.7 MB (66683602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11071e3253db6bef0a1c54b27704990bd7a880f6cdbf04cd8e66244e9080225d`  
		Last Modified: Wed, 16 Sep 2026 04:33:43 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6425eed4fb2083ff9bddf3ae4973d6e4d581858f7638a11e6e090dfd4f9f0ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35884634fa717def17620bb835aa50d3ac4abb8f99deb86119a2b05393801654`

```dockerfile
```

-	Layers:
	-	`sha256:3479534363c4846e9def5362a54f012c8b5f572080f1b312bd06e7e20aaa9dd2`  
		Last Modified: Wed, 16 Sep 2026 04:33:43 GMT  
		Size: 5.1 MB (5145159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44572fdca4bb07d8a0eff774b4a68425f5c15df56d05dcd03abc0a26dcceea8d`  
		Last Modified: Wed, 16 Sep 2026 04:33:43 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

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

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

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
