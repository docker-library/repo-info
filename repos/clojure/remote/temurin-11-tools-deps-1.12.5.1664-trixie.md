## `clojure:temurin-11-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:a2a649abf85f2991cf3df5f991eba0cb8b9758245acea69da9d43678e021831a
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

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:ba67095bdcd93254acb7e8d47f88e9f56409949e3dfedf6ba1e3e917003c69db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277738823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837272b65e987c80a1758c6719fdc37e0e4654113aa9a24b1400d22327c47432`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:26:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:26:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:26:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:26:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:26:29 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:26:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:26:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:26:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0755fb5e57af4e637349bfbd3b676e7cf88322b342f734b704f2564fcfd1e647`  
		Last Modified: Tue, 25 Aug 2026 01:27:09 GMT  
		Size: 145.9 MB (145861364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b57bd15199e726e960c79119a176fc57d9eae804840be12120ac78225bd03f2`  
		Last Modified: Tue, 25 Aug 2026 01:27:07 GMT  
		Size: 82.5 MB (82538984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:946a16cf8b3cbeb65be0cc33b7947b50e1a762830129176ef566008d405eb7eb`  
		Last Modified: Tue, 25 Aug 2026 01:27:03 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:88875d3c21b9fe02f937a5841058b5354d32c0e84399535b19cac7b6583c3609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7507724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66840769f9ff31bc80796d4143f13584ce21ec21acfa00839a2c985dc29aada7`

```dockerfile
```

-	Layers:
	-	`sha256:5e172ed14fe773585a289fc5223d96a216f032252176109b5d078707772bd1a8`  
		Last Modified: Tue, 25 Aug 2026 01:27:04 GMT  
		Size: 7.5 MB (7493385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5ca0d950a6499c5763d558af188143ae3f53f740f601a036ebada61f5498a0f`  
		Last Modified: Tue, 25 Aug 2026 01:27:04 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:38bb0e69cd00a283f1db40004b9ae8cdaf758dc89638539a5c81ef987b07ab57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274631272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84fa364c57d29cdb0d289448f047936162bb49438369dbaad86910ab9f5ee35b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:31:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:36 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9c26825646881f3594f6c1afba960bafa6338d7a214a28b84db1567f59625b`  
		Last Modified: Tue, 25 Aug 2026 01:32:17 GMT  
		Size: 142.6 MB (142566596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec5f90933331ee7724a36afa7da4197347acc3c9b3b13d914542719c4805551`  
		Last Modified: Tue, 25 Aug 2026 01:32:16 GMT  
		Size: 82.4 MB (82359178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b545f415ed377b12cac2ce222676376fa3b604168e3d6754072fc8fa2ae65281`  
		Last Modified: Tue, 25 Aug 2026 01:32:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ed2f48835511bc8440ece0a79329ff9c2c047e5368e7d92f51a168c84be21d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7514853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0b8efdd5f477d472ef40a89f75b71a2e022ad11d6bfb1edf4598efc4626a48`

```dockerfile
```

-	Layers:
	-	`sha256:b75744b5a8bba61c3024947939377ee7a8a08e624bfe38b93cf3ed332e38b21c`  
		Last Modified: Tue, 25 Aug 2026 01:32:13 GMT  
		Size: 7.5 MB (7500396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cfd9ee76655b0dc391f85ab5e34390af9dd2cfd2635d44b4894dd12a791715f`  
		Last Modified: Tue, 25 Aug 2026 01:32:13 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ac0fec7786a6947841aa5cafc67d1025d32ebeff2f71321d50f7b0816d118d98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274205270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3c4efc22de015b797217e3a2292a8a5bd5c99f1482d52f0c4f742af98ce924`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:08:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:08:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:08:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:08:49 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:08:50 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:16:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:16:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:16:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a26f7aa3a43d4f8490541a93cee064575aa2365612d762d90d135fe37ed3781`  
		Last Modified: Tue, 25 Aug 2026 08:13:16 GMT  
		Size: 133.1 MB (133089920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc56104afcb3c1061ffcad30b5bb56a31a7d2fb2afa0b7fbb408a88af1b1153`  
		Last Modified: Tue, 25 Aug 2026 08:17:20 GMT  
		Size: 88.0 MB (87950421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21db308a66c5208a9071b1bbdb148dec49a367712ece1a0976db4a3a9855910`  
		Last Modified: Tue, 25 Aug 2026 08:17:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:19cb65a4d9ffcaf782fc1dfb150d8ba6cb66777e7d0f9d6987b06a02dbbf051b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7511578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513d30984e8023faa6b98e26b82cf9385f56342a8fb313d42eb0498cdd55d874`

```dockerfile
```

-	Layers:
	-	`sha256:6155079703543782b9f53c58828f1f778698a39ac0411d908597d09f1a3101bc`  
		Last Modified: Tue, 25 Aug 2026 08:17:18 GMT  
		Size: 7.5 MB (7497191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e52f72e8aaee09963121488b555ffb5a79dfe161a1c99f41a06368775e6edd`  
		Last Modified: Tue, 25 Aug 2026 08:17:17 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:f52c37fd51c0c5fc370059e2881ba611df92cf4e61a081b0cea1f512c3331b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259568595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9b83369d83620dac0f04a8f96eb092881e1f7fa0206a831ca31750620846df`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:05:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:05:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:05:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:05:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:05:08 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:05:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:05:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:05:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23cfd74f28384047644a3d11a0e5145617e86e8a0fbcaed4df0fae84b08133c`  
		Last Modified: Tue, 25 Aug 2026 02:05:55 GMT  
		Size: 126.6 MB (126641459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2fa6865edacd4d4c7047de809fdf32ecbe0db1a270ac5c95ececac3ed68d9f`  
		Last Modified: Tue, 25 Aug 2026 02:05:54 GMT  
		Size: 83.5 MB (83519796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e60efa36f83aa31a2e633ed18635c1ac422f4698c171b5d87cf3ba6f5c771e`  
		Last Modified: Tue, 25 Aug 2026 02:05:52 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a85c33ca2c72d84c4579fd6e99e4b4e0e38a875e001b3bccdf296b40fecd53e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7503650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbda80c1d99ece0b7eeb9632e28ca26492cc8b24a06b5cb23729ba78dd528f5`

```dockerfile
```

-	Layers:
	-	`sha256:db5ab9f7ec946c36db5440aaa1ab225c9af4b77df9e284ae2dd5f0dc6cf2931f`  
		Last Modified: Tue, 25 Aug 2026 02:05:52 GMT  
		Size: 7.5 MB (7489311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ea3fd066ceed82e503add8908f52c9fefe0e34175ce264a374fe35c2e389142`  
		Last Modified: Tue, 25 Aug 2026 02:05:52 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json
