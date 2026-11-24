## `clojure:temurin-17-tools-deps-1.12.7.1681-trixie`

```console
$ docker pull clojure@sha256:2f0c70dadab7907f88ae1fde7403d59166125bb6a54eedd69303dfa21dae16b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:bdefe4d1369d79d740ce7335e79e51e1954d6c6b13c211f1ef3e3557534d5323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278107532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80ce6ab4ad6c94598e4d541481ec2220bbadd0cd8edfa4e7c98bdb33a4df55a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:10:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:10:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:10:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:10:30 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:10:30 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:10:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:10:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:10:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:10:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:10:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898b17e55b098f490cd3b6c5576937e31afd81ebd6caee3622e6e80038989a2a`  
		Last Modified: Tue, 24 Nov 2026 05:11:07 GMT  
		Size: 146.1 MB (146114278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb529c61c8ab36f88829e009a6cbade4b5fb153ebed86fbd9a4b9b4d9ce08ad2`  
		Last Modified: Tue, 24 Nov 2026 05:11:07 GMT  
		Size: 82.6 MB (82582429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f671e0ce2f6b5eda2106bd086bf16d640b1d7b250a15bf6b6df363e797b168`  
		Last Modified: Tue, 24 Nov 2026 05:11:04 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f4137ab390e8e5113527f4ecdaad02aa1be3046e27721ea8c62c78430396a8`  
		Last Modified: Tue, 24 Nov 2026 05:11:04 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9919a5c16f314b0993f1a28f6678d088a33afd0b2a556877341638d3c16dbe9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff52ffe9724eca0a09bb6c5f2276bdaa408b935d730a1632503563df5f35075d`

```dockerfile
```

-	Layers:
	-	`sha256:e0cece0d1c38e6829def6072bf2fe8ee16b43c488f2573fa879524b24f1fb112`  
		Last Modified: Tue, 24 Nov 2026 05:11:05 GMT  
		Size: 7.5 MB (7476015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66b777fe8ed9d1edd4e710616c83325dbcdaf1b8e04d34a9d42be6aa33e34c0b`  
		Last Modified: Tue, 24 Nov 2026 05:11:04 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ff4d75e684181139091fe4d530805a63a4cd9a8a54b02358157166ece33c4866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277131324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb1a0a3b76bdb56b5b337ecc0554833cbc0651accfe058bffcd4b24b2ca7837`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:07:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:17 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:17 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efcfa4eab02808074c32e1614e9a5937ddf295b7ebe1dd2278330feaa93459c`  
		Last Modified: Thu, 19 Nov 2026 22:07:57 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30fe9f5f19b286ab039fe113ec6b08d53c58721fd9b954fbef110af1dd3600aa`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 82.4 MB (82394017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641cb2238b595c09e65272994a093af90a2132d8b12df5b39aa2caee808d9838`  
		Last Modified: Thu, 19 Nov 2026 22:07:52 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df4f03b59812f39ae1b12ff500cec7b5c0aa25a39bded9ecf4d24806b2233b2`  
		Last Modified: Thu, 19 Nov 2026 22:07:53 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ba7237f357077760dccdb67fef0577371be647d8a48180cab80daf5eed148b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8145675dc6ba03977a1a6c7169cb3c9789a492a9977ba21c98d6094ccf355888`

```dockerfile
```

-	Layers:
	-	`sha256:aa3d0752cd276ef3490c29377c8f9535c441d24443d35319fbc49e63c0a7c508`  
		Last Modified: Thu, 19 Nov 2026 22:07:53 GMT  
		Size: 7.5 MB (7483154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325363a5d4f94c0168a3f982229c06d3ff0c3360411c6d2dc3d5034fd420cfd2`  
		Last Modified: Thu, 19 Nov 2026 22:07:53 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:7fe4b600fc013a3e2913d88e916da7171cc6855a73229e82a543db650f102e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286127593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2163e0fc25f8a55eee4748b4ae5bbf732129980a5c3509a564a31524b87c7d89`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:37:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:37:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:37:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:37:01 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:37:01 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:43:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 12:43:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 12:43:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:43:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:43:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6cb2df50344046ca94b029f7e4e5b65e34c4947074f3ac963db9d64609142f`  
		Last Modified: Tue, 24 Nov 2026 12:41:03 GMT  
		Size: 144.9 MB (144892617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc65134a41960d8d615b636153978ed165c80ca15b3bb11eb25c3d35e1b98d1b`  
		Last Modified: Tue, 24 Nov 2026 12:44:24 GMT  
		Size: 88.0 MB (88003596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d119bf0b8f7d6c06384bd9dec10a807e4acf34e444312f796a4f8fc7d22a524b`  
		Last Modified: Tue, 24 Nov 2026 12:44:19 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abad37b8204e7d2a02108433b8dec030e9f1b8b9279d20828a945c9330181ef5`  
		Last Modified: Tue, 24 Nov 2026 12:44:19 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2d5843ca69f9cc62ab2ed0d9cbe1c553f4e086dea93ca6a91ced8b24874ec7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7495139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdd2678eb064c8eb92b3eb69009de7b2b960038ae8b57459a3f85d52788cd4c8`

```dockerfile
```

-	Layers:
	-	`sha256:13d9a4b9204affb842aa4f2b821e44a59262fdab87513869da7544b4aa66fcaf`  
		Last Modified: Tue, 24 Nov 2026 12:44:19 GMT  
		Size: 7.5 MB (7479184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d69769c61cc30701af9eb672df1a93b20a9b60b422b93023458554b563b197a`  
		Last Modified: Tue, 24 Nov 2026 12:44:18 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json
