## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:2fb2319eb04324cc75022e5d83dd12c96af7f0bb24acf6be1c9d33139d803cc7
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

### `clojure:temurin-11-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:6985243c235c6774d4bad5cfbd159993ac6138a248fa4b4e1af003a4ae4e2069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272528129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55094f54cdfae9a2c00616a33272e54bfbb7e863444cd710f35e3c4fcbbdd961`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:48:03 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:48:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:48:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbaf4e7ddce516ae86aff8db36cee24ea3d201c755a1a8f32eeee3bcefaced0`  
		Last Modified: Tue, 04 Aug 2026 02:48:40 GMT  
		Size: 145.9 MB (145886280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f78e00722e8df4e7c0978ca4618e32239ac2ba2e36ec504f53dee197381bd81`  
		Last Modified: Tue, 04 Aug 2026 02:48:39 GMT  
		Size: 78.1 MB (78143801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8dede57921fa8c16fb5a0e0085020e0fe90ec974ca5734db005eb3f79847f8`  
		Last Modified: Tue, 04 Aug 2026 02:48:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3bec7034d2a2f57d2e85a72d42c2991dc0cb4475bd2ef9658b05de0dac655efc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7410048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0156092cf1626b6e122d919d1ac63e94e3621037a4db7b079b5986392f1e51eb`

```dockerfile
```

-	Layers:
	-	`sha256:baa245bd348bd1f2fe9163fabee7bdeff98435efe841f55ae7e9c8e1246f8c37`  
		Last Modified: Tue, 04 Aug 2026 02:48:36 GMT  
		Size: 7.4 MB (7395686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad006b99ebe20f48337250a9532b0f18b011fad2c5fd8cde39f01fe8fbdf4a91`  
		Last Modified: Tue, 04 Aug 2026 02:48:36 GMT  
		Size: 14.4 KB (14362 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1bcc5e5a767c3c05b16e1ff4085aed5c307e600741d7dcf61c8303745a49a4b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269095778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0be5a1099f8d433fa31836b8944a7363453a6d71681e604fe8c44e13ebc926`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:48:17 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:48:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:48:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec05d53e1711fd522fe6e0dcf02431dc5f1b71dda772bb3d9ac7578ab87acd4`  
		Last Modified: Tue, 04 Aug 2026 02:48:56 GMT  
		Size: 142.6 MB (142582248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd3d3284eb0816b0558aa788f9d1e5ef4c437017e3806dc4155b7a2dc073bee`  
		Last Modified: Tue, 04 Aug 2026 02:48:55 GMT  
		Size: 78.1 MB (78129195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62314e7c5741b54aa93c765abd888c4433c344cef01a6696ebff9c954fc7b81`  
		Last Modified: Tue, 04 Aug 2026 02:48:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e954969a2303f7b8ed833cebed1d86ced0d6bf5d6c96587429beb030f7c50c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7416548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64e3d6a642b3e490d14fba019b1bf8b85e86d0bf01571d9c4e7093a9a53369f1`

```dockerfile
```

-	Layers:
	-	`sha256:5e1dd0e142b0e54e55c4ba140c4f6e2a87c91725e930e1a688dbc19aa33232d8`  
		Last Modified: Tue, 04 Aug 2026 02:48:52 GMT  
		Size: 7.4 MB (7402067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a5a834acf93ec92bf8c61e6b34f60775e77d355017d22d91e3f08f2e55fe904`  
		Last Modified: Tue, 04 Aug 2026 02:48:52 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:902593e6914752f9de5955c5a8d20edc18bb7b23df9d12167b13798d29e7c9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269425854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa56c6ae2692268f7a604c7e87322f65e4838249e257817f9239847a4591814`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:50:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:50:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:50:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:50:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 04:50:54 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:03:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:03:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:03:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98564b48110dd65b324ab9ead88f4ef7f5c0a14e48628a131490c2ec81364b7e`  
		Last Modified: Tue, 04 Aug 2026 04:54:38 GMT  
		Size: 133.1 MB (133109636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4857051c229d18d1835bd2fd9803d4633780b3311db00a57fe32329ffec9161e`  
		Last Modified: Tue, 04 Aug 2026 05:03:40 GMT  
		Size: 84.0 MB (83973737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c135c03400b5b0823a67828e345911cb0fa298d8d9a1a3e41cd61579061d15`  
		Last Modified: Tue, 04 Aug 2026 05:03:37 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:da1f9bfcfbf4a26fe706ced83c638e374aeb9534162fa11da472aac96f9172ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7414698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab7f0a5a0de25d0b76a804a47a392866a9c22078acb2209cf610daac4024bd53`

```dockerfile
```

-	Layers:
	-	`sha256:e4d75d84e56a68d54c59e76d1062fd96d3fbf53dcc274fb57ac430b8df04e57b`  
		Last Modified: Tue, 04 Aug 2026 05:03:38 GMT  
		Size: 7.4 MB (7400287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c2e48be29d3b9087ea4715762a19227232cc479ee64588219c5f8d8878b07a2`  
		Last Modified: Tue, 04 Aug 2026 05:03:37 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:4248e133e81faf5dd1520a0ffbc1a28116e3687f9f5587d8a2b5ca4cb7107cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250746753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87af54917799532ff71d7325d247f7997a571fa11f51f1f156d825c46086cba6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:50:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:13 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:50:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:50:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e8ab673b3e926ea338a092a3731e2e2335eb2073c4222b400c50e0e33bc9fd`  
		Last Modified: Tue, 04 Aug 2026 02:50:57 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06c03c969ca1c89c3a86920198986d0e5b8c7c69863b7fe149f5c216aa47f7f`  
		Last Modified: Tue, 04 Aug 2026 02:50:56 GMT  
		Size: 76.9 MB (76936415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd61632dd00f52120bce035d2760c92317babaec125f405dcdd0d863b776396`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6ae67e43a87d712349ed2d61f304e34d05823c3a7a4012e47646b898439a174a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8abbefc237043673897ac02227d8c04b6ae7fa8a331afa21f894e890290945`

```dockerfile
```

-	Layers:
	-	`sha256:5f5fb3bf2947fb78d920a2308f7cf7b5800ecf221a622b953bae41e6e8046c2f`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 7.4 MB (7387009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d0f1b14748d277f1b6fa30c311c115cc9c6cd8949b844b8c4a585da78526a5`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json
