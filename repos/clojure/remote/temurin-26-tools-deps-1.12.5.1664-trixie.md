## `clojure:temurin-26-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:f45d1e81aa30372519c949b253c6a1a55336557274096d9cdda1812b0004733a
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

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:cac8930877c72fff6aacf0f108f3d8d5e275db3dbe56e7d7b0e129da2e6ebb21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226441677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97886435d2e3e642e3556fa6f0b0f8c16e1dfb73a16d502bcf4df531d1614b59`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:33:38 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:33:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:33:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296b3e17359b448fc6820947756856f9f1ba0aa282cfc5f1f1c1f09c100bf4ed`  
		Last Modified: Tue, 25 Aug 2026 01:34:16 GMT  
		Size: 94.6 MB (94563729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a48f1e672316882561aad3346d9765307b98e8ad0296e61c7295e6501bc2793`  
		Last Modified: Tue, 25 Aug 2026 01:34:16 GMT  
		Size: 82.5 MB (82539077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4fee6017fb28f91f49360cfd35b47984827ee52c5369a59ba1feb211e25fc57`  
		Last Modified: Tue, 25 Aug 2026 01:34:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4699cbd97c3e46ae8c832ccf8e464206c9051718f65835477db49e4efe5d61c1`  
		Last Modified: Tue, 25 Aug 2026 01:34:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f0a59c54cadd7d1f2972df3fd96b9dcd08ce1cb010846ac5f8a2d82e73d729f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7454665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0cddbb160e1868f6af20cb2b01f90ab2b6291ff806dad29a722b1d4625bf597`

```dockerfile
```

-	Layers:
	-	`sha256:67510d9132a6a9bd992c090a2219198022268d17d9361a5b1a50fdf7cf131c52`  
		Last Modified: Tue, 25 Aug 2026 01:34:14 GMT  
		Size: 7.4 MB (7438764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3376c16ce008f56b40c126cb63e2cc21c4c9539082f9d74a7b51311aa517ef5`  
		Last Modified: Tue, 25 Aug 2026 01:34:13 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5e3454b33fc7ac4a9390d7d45410b7c75816b323e14739705054c8cd9c8cbc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225576232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565cc03df51aeefb2c1d6dacfadd41ce7a382644ac4a6ff30095309f1d7a5060`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:13:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:13:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:13:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:13:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:13:26 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:13:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:13:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a76da4b6b42fea8c7f7a531ae92971edb1cbbb5cfad41efa979bbcc29b3fa2`  
		Last Modified: Fri, 21 Aug 2026 19:14:09 GMT  
		Size: 93.5 MB (93541567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaec37652625e8bdcd877f1ccd63cb13f39f21f0f204d1b2c1bb7955bd321d3a`  
		Last Modified: Fri, 21 Aug 2026 19:14:08 GMT  
		Size: 82.4 MB (82359780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e4e8789d562c4762f83d7467ccc5d5d73eca2cb0f8bd5d71eb99f4b9f29569`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9a51578016b163bde913ca45d860b74993009542e68dd6350c30d9b4adab32`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:aacce932b2dba3ad3bb7e33e6ab1e74d39c1d76e3866129fe5af6c1bac005c8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d464bf61a4526c8dc9e46f4fbf7bd7a00931e9413a4e75d8e43c01cd51f506b5`

```dockerfile
```

-	Layers:
	-	`sha256:787678e4fda06f355bb71ac8c02bb663adc9110c1f2aabf9db4ed61e00cfc50e`  
		Last Modified: Fri, 21 Aug 2026 19:14:06 GMT  
		Size: 7.4 MB (7440176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5963692bfcd6d4f86713eac310d45d578893b94b791829e9eed4365790124f52`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ca8018e3d22a0e6afa36a38854ad32c83956e59a0a6c9cdcd95984563326d213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.4 MB (234435859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2674a28b2a2883ae09b882ee01760883fe3d5aeedc9228dafe185706d2d10b47`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 23:13:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 23:13:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 23:13:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:13:12 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 23:13:12 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:20:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 23:20:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 23:20:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:20:43 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:20:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661cb193da0b6268d49ff9fa226fda7050c685d520d4ce9d75d4c2eb3ce90db9`  
		Last Modified: Fri, 21 Aug 2026 23:17:00 GMT  
		Size: 93.4 MB (93350799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db21c2eaf3d108c15d44e2d4f876507be1ca8b9f0c438f0afc0e2d6d638ca111`  
		Last Modified: Fri, 21 Aug 2026 23:21:24 GMT  
		Size: 88.0 MB (87950413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74eae058431889333099e0ecce30b06d9fe352b9719262b1fcfa5a48e27307f0`  
		Last Modified: Fri, 21 Aug 2026 23:21:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd80da79ab3b08d10b235df4c7d2dc296da286e35f44201a29d40ffa0c4c7476`  
		Last Modified: Fri, 21 Aug 2026 23:21:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0f8cd8b073144dac7e1189a95e81db77cc118aab96393be2e8f0962e27316c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3262ccaa01528fcb5abc6ac7742f3c6f1faf0784c9ab6ce410c52c61034e4771`

```dockerfile
```

-	Layers:
	-	`sha256:95a6303d8f10eb8e0607d6caa7d208e5defee9d580814e6d50148df702c44506`  
		Last Modified: Fri, 21 Aug 2026 23:21:22 GMT  
		Size: 7.4 MB (7422143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8cdd97ae712088445524ca06755e4f15d544eeead2d33180ff547bf22c7acd7`  
		Last Modified: Fri, 21 Aug 2026 23:21:22 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:08a74185192f0efcc6bf3141892f5b084e5053a6560ed7af553584bb13cce5fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223515651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66131e532866748a78f7101bd96a5349b621aa877e09b517c4191052a69f7e74`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:11:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:11:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:11:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:11:48 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:12:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:12:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:12:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:12:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:12:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5459be13f0d146d434281e08f096f839c0fc6893d92d9a9be9f02a010da412`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 90.6 MB (90588188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8827626b23c89537666d61e49c10c2a1af0036bca9b2a8e1f97777c70fb0056`  
		Last Modified: Tue, 25 Aug 2026 02:12:35 GMT  
		Size: 83.5 MB (83519722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05c81abe2450cbc167b850811f181d1ba52fb0c578439ccebf83d56adf004ae`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eaa99df99d83bf33ffa0e4bd519c207281e885aae558bdf69f692011243c8f5`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2336f0933215c4b58d3c91cd958e7a2df2f8d593b330d97eeea4a548e906c0b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7435773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cd3f4f671c8a18dd574541a809b23ea0b0034fdcabd87fe64328cbe3227913`

```dockerfile
```

-	Layers:
	-	`sha256:cd98cb70f6d28f83d2685d8b10af97fd13f83d4a90c8e9289eef2cbaf0f56913`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 7.4 MB (7419872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d16a16a899a8ffe0a235c06da05d9b76d1082841ff806a5f3ae8d9c58bc0ff`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
