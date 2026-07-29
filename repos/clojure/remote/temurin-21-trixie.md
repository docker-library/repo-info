## `clojure:temurin-21-trixie`

```console
$ docker pull clojure@sha256:b456115e6f617ccf5e98e421a169fd1c6d1bd8a18f2df97e5998fcdfa3669de5
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

### `clojure:temurin-21-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:3d88432258ceaeb7f99094a75cddb2f0bc20fd34a3f0004fae6e88bd286997de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290006724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233b64d7d29ebd4be94c19a8cff51339b40ab4e51747306950b137e8f102d2d5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:56:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:56:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:56:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:56:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:56:55 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:57:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:10 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5894f2a9c28e78008f76f896fc6e939ddfa19f5c866b141e9e8961fb0d5991c7`  
		Last Modified: Wed, 29 Jul 2026 17:57:32 GMT  
		Size: 158.2 MB (158166996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca42aa507157e0b0d8097c6072638068c3e64f1dc5ae927f112a5c5c4e33d42c`  
		Last Modified: Wed, 29 Jul 2026 17:57:31 GMT  
		Size: 82.5 MB (82526115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8183abfc82d8c218c6e11e3277598b97f42f831b2008cfa8012d6fc0a05c93d6`  
		Last Modified: Wed, 29 Jul 2026 17:57:28 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae1c2acc0e8505a60f3046e4af1bcb35ab199c2dd81e9d84c713e7b7d502508`  
		Last Modified: Wed, 29 Jul 2026 17:57:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9c20aaf5e781b026ba3003cb1ea82bfcddce65935702370d79f4645ad421bb6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7486621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ace93a81da499ad9f02fe53505a9169350830b774bb4a0ef944cdeebe27054`

```dockerfile
```

-	Layers:
	-	`sha256:ebb2b96fb67b17628279c73111f1482a0590f0e1c822664fcad92c424cfc98c6`  
		Last Modified: Wed, 29 Jul 2026 17:57:28 GMT  
		Size: 7.5 MB (7470713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7783b547c70c06112cac918d71ff1a6a11fabd8f8b06b5a83426fa6301826a4`  
		Last Modified: Wed, 29 Jul 2026 17:57:28 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8aaad1a37029bf23fed3659e12ae4bfa36c5c2d6493f545718f1efb809338d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288485499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cbd5641f962257dea36f5583aa8dadbe58ff2bdfc4aecf2e85f871ed643bc84`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:05:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:05:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:05:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:05:37 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:05:37 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:05:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:05:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:05:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:05:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:05:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e46c97d50275299d0b2c1ccd5a4ab206f12ccc35726ef01504065f32678ed6`  
		Last Modified: Wed, 29 Jul 2026 18:06:21 GMT  
		Size: 156.5 MB (156461278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c46d0023791c63316301ddcf3b9da614acf450be7420356855d3707589f9ad1`  
		Last Modified: Wed, 29 Jul 2026 18:06:19 GMT  
		Size: 82.3 MB (82348993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318007bcf63839d926c1ef66b8d2669bfcfa4a5871b357598536a543c77a98ab`  
		Last Modified: Wed, 29 Jul 2026 18:06:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4271c51756b2fe077fa5a99c87d9bc5d26abd523867dfe71c1f59de8e99aa5fc`  
		Last Modified: Wed, 29 Jul 2026 18:06:17 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d9ed1ecb3b16e57b764a73d1e6692d3074a8404d3ca0bb6d0d10f54572282ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7493132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291eebc4ec220525ff409eeb5e12a24bde8482fa4abca79c0eb70da83cb1d42f`

```dockerfile
```

-	Layers:
	-	`sha256:90a4e5544279c88f2e35a5c553a9279ba39a659abfaf9409341a5f5b0422a84b`  
		Last Modified: Wed, 29 Jul 2026 18:06:17 GMT  
		Size: 7.5 MB (7477106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca300594a87ed9e265c85edbe32ea1d88c40b35bd229a1a04922f92038cf44b1`  
		Last Modified: Wed, 29 Jul 2026 18:06:17 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:e84ed3de69a88dd51e83b44f33553e3a893ae7c2d8a9d1de05e2defb9692d6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299424386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1d48fcb4b917fe7f7b13f2179f29e4a3999943503b6bf39efbb5e65a64f7be`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:09:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:09:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:09:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:09:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:09:59 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:10:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:10:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:10:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:10:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:10:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d797d64d4c4d72af28950683ca30de0bcfa1347ac56309e2cd65cf2b52935293`  
		Last Modified: Wed, 29 Jul 2026 18:11:40 GMT  
		Size: 158.3 MB (158343188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5c6e6a6845b2d45d45faf796d396ad47714edfe47684cdfe533f0bddce1449`  
		Last Modified: Wed, 29 Jul 2026 18:11:38 GMT  
		Size: 87.9 MB (87946141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0b1a7cf94af823fa0147ffcd607d2933c896fd3855e5cda495d2f9b901bd89`  
		Last Modified: Wed, 29 Jul 2026 18:11:34 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8b83d96c6006eb832efe9d38cf93773b8e3cc72f78dba5e10b30bcd76314a2`  
		Last Modified: Wed, 29 Jul 2026 18:11:35 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1190001e155b267bd563cbf4c68d46ae0da5822dff02b23ea12edff3e3a6a75d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4b0823aa14dc3c9e2d0926ec676a67272be8f9265986a693b6f40c98a4a176`

```dockerfile
```

-	Layers:
	-	`sha256:945931a5afd6d860cfbe9ceba9e9f810682506482354a72bcca02e092eff8eca`  
		Last Modified: Wed, 29 Jul 2026 18:11:35 GMT  
		Size: 7.5 MB (7475134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e0e0e53747a19e6dee117f2042bcab5ede9d3f1840b656d1af07440aefc3154`  
		Last Modified: Wed, 29 Jul 2026 18:11:34 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:7290c9a29d7c758496eabe6c8ed0a21be5ebc0be96d84d6092d98b1969251a61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280283664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db1fef2bc2103123a893a54d884bb24786b5199ac1e6ddf4d54cd431960a5dc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:22:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:22:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:22:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:22:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:22:08 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:22:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:22:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:22:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:22:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:22:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fcb2702095419f687cad2965eb71199f24ce6fbadc7ba5d0077d4fc4c648d98`  
		Last Modified: Wed, 29 Jul 2026 18:23:06 GMT  
		Size: 147.4 MB (147388348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d262fc96bfd2b3f1b85fd797e7f15c16382dc9b4bad0212d921d50fb4d3d0e5`  
		Last Modified: Wed, 29 Jul 2026 18:23:04 GMT  
		Size: 83.5 MB (83512566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078362a6225ddf8ab470b17314a5b926365f1db7a1c56dcb90a1af57d8aa66da`  
		Last Modified: Wed, 29 Jul 2026 18:23:02 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3b684825556f1d67a80c5f5ef08e074a17dba71bdc4b8b5aea78f38fca2328`  
		Last Modified: Wed, 29 Jul 2026 18:23:02 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b5ae6c4535f5425faffeb5d6613dc56861759d9599fdc3b79fb559fd920b5b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c456f84abff5fb81c8f82064e4d4b835e4aea50d734cb837d54140f6d41ea0fc`

```dockerfile
```

-	Layers:
	-	`sha256:79245798456df6d76d10ec7b70a6e4c815c2d5b164f45d249a5d5184c4756cef`  
		Last Modified: Wed, 29 Jul 2026 18:23:03 GMT  
		Size: 7.5 MB (7466635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df54e785a8d4f61001ef72ed0ffddeb7e14c1ea6b5214011a53a0d8815d9aafc`  
		Last Modified: Wed, 29 Jul 2026 18:23:02 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
