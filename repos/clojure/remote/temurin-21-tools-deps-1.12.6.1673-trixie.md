## `clojure:temurin-21-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:05cab444d08bd6996c46baca7d35790aa69f06e65ffb8e543bb3362547d822bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:e558a27d6b78de28d62ba74052ca7b345f11527dbdafb9bc0958e87ddf462743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290081874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d10d3a642790b476054b5c5cb78abccb68e0290785ab0e7a5cdcd23349629d3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:50:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:50:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:50:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:50:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:50:53 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:51:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:51:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:51:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:51:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:51:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31d81ba39f010827e200af59185efb18cbcb4cafc4deb9bc87f45a062e9751e`  
		Last Modified: Tue, 27 Oct 2026 00:51:32 GMT  
		Size: 158.1 MB (158117526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3eae86f37b57911111f12de6b4e3ba35f7f9d73fb294ee101ac458d073efa14`  
		Last Modified: Tue, 27 Oct 2026 00:51:30 GMT  
		Size: 82.6 MB (82569683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c815cc1e42b4e7557e31b3e8d33e4ce39dc263880e3cdaf6865cbcc05561a2f8`  
		Last Modified: Tue, 27 Oct 2026 00:51:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc2e2bb8048fe74e78eee82fa346a617a8fa3c25690a9ee9269c9dc922ffaaf`  
		Last Modified: Tue, 27 Oct 2026 00:51:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4c338db2642f9853678f0073a36c4c403ffcd87b9a48e69029868c1349be5630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea1c4c81f8b35f78b7013c912119a7395e1096fcf290036576489229ac665286`

```dockerfile
```

-	Layers:
	-	`sha256:5ad902ecb0aa881990c3dbc5096870629bd95f3e2d7bb8383c3c0fc735a9f68e`  
		Last Modified: Tue, 27 Oct 2026 00:51:28 GMT  
		Size: 7.5 MB (7478619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a74529f5a2ff5c31afaa31ec5da9b3e5f0b3ba48a81478ddf5177578805af6da`  
		Last Modified: Tue, 27 Oct 2026 00:51:27 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3f626cbc193be67c97f0058a155a0a95a391a89ed799ed24288656e8e75d23a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.6 MB (288570496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85704abf50ffeda23d1ffed222755b3142293bab09ea23239ae3a980bfe3fe95`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:20:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:20:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:20:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:20:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:20:27 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:20:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:20:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c90cfce8ad2c9d2f4f6e92b445476bbd2dc80488dbb9d888bfce09e3d693f11`  
		Last Modified: Wed, 28 Oct 2026 02:21:08 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38652348c3bddcac3158cbc6fcd1ac550a36194521ee30374e881b59d61e2431`  
		Last Modified: Wed, 28 Oct 2026 02:21:07 GMT  
		Size: 82.4 MB (82392597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca16f4f38ed98fd8f423f7851e0ae161f4ed6ad3f5e74303d8ccad8853efb8d`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762de98fab86360342796c7a509fe04bcbbff14570a1db450959a877078bad61`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6f649f7d518ef816dc97094098935261392ba446db9bda04e41fd285e4b3ae96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2600288936ce98aca190dd1b6065eea2d32be19db45e52ab7d9c4ab6eeea7855`

```dockerfile
```

-	Layers:
	-	`sha256:090e02d1fc5eb131ee6fd229c54d78ab408b222ea2ea37439e47ee4b74fcb0ec`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 7.5 MB (7485012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eed4f753fc0034291dc29edf5d48522bafed9cb6642e59032a65d54a0e4c3183`  
		Last Modified: Wed, 28 Oct 2026 02:21:04 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:fea965527727eb73e869a47c572294ead1a6d5e51a2ffc123fee9d0098d6d0dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299488602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab094b6f04d92bf9c06a6ceef3d6c5c6455a09cab124d8f30c67d6631396a23`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:39:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:39:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:39:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:39:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:39:42 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:48:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:48:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:48:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:48:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:48:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e7cd69e3d8d325f9aeb846520a79195a54b18e1c6d87a600625c390cce0abe`  
		Last Modified: Wed, 21 Oct 2026 10:44:57 GMT  
		Size: 158.3 MB (158282669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6e22edcfcab1e409f841a7525f075071317e343d1badb4bfc1d85dcc7f0c51`  
		Last Modified: Wed, 21 Oct 2026 10:49:11 GMT  
		Size: 88.0 MB (87997311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a9368bbbb726b911c97017c5999fa8fa25864a51bdf897bd11d754107bc6ed`  
		Last Modified: Wed, 21 Oct 2026 10:49:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309237b5508ac8be1e622dd79142ea3076e0c7ad1fb35bb54f9da63b5517e63b`  
		Last Modified: Wed, 21 Oct 2026 10:49:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:82ea190d27a4f3cd50609756f8e0b251570666495b7282c8a7d09d351d25d93f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0520cf03cef62cf311abd810b042cb74a931ae33b12cfa77fe54b487cf724983`

```dockerfile
```

-	Layers:
	-	`sha256:b22ad08a4519386605b3ee7fb9f7c0808b8ba69608714819734b1e534ccde7a6`  
		Last Modified: Wed, 21 Oct 2026 10:49:08 GMT  
		Size: 7.5 MB (7483814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9757794cfe3341d2581435e2621c4fcb7218405ada4fdd2d57cefc499404c200`  
		Last Modified: Wed, 21 Oct 2026 10:49:08 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
