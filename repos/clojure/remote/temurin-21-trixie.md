## `clojure:temurin-21-trixie`

```console
$ docker pull clojure@sha256:5998f8875103d3d633979217476886de26ffaf3c0c2b0b9001f3de40ed042ebc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie` - linux; amd64

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

### `clojure:temurin-21-trixie` - unknown; unknown

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

### `clojure:temurin-21-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:905c51572cb8e2fc744e4b9dbf74671bf55ff6e0037c37bbea9ca65b69ad5584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.6 MB (288555915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5e21d3d9079aaeb050ec309ab5dde41c7556dafd6ca70eaf8a197b5395b7ccb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:50:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:50:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:50:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:50:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:50:45 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:51:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:51:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:51:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:51:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:51:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510d715d3870fcaffd5a472c0e46866240ef10d941fc251be2845cb7b9f4a673`  
		Last Modified: Tue, 27 Oct 2026 00:51:28 GMT  
		Size: 156.4 MB (156400738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bcd9768f62daa72b9d00086e8892de769efe605f83adbc0758c0786e6461951`  
		Last Modified: Tue, 27 Oct 2026 00:51:27 GMT  
		Size: 82.4 MB (82392532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc2d778b2ab63ce56badc712047a680e63d8afbbdc7eea234c5e671a98e3a85`  
		Last Modified: Tue, 27 Oct 2026 00:51:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c64dc3620f4015ee06c5534a4b515884de970b4bbe88338e1dd4092b5466c65`  
		Last Modified: Tue, 27 Oct 2026 00:51:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8da5c20418f12c199342684a62d8a461298ecbac4d35f698f2602c831a031959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f37fd6a5fb4611509e060974a1670f5b69f8a8283a876187124c33644f402dc`

```dockerfile
```

-	Layers:
	-	`sha256:88697bcacf3b703969ecf87dc0cd7323e92bff70920b6e1a04c6c9ea9033e63b`  
		Last Modified: Tue, 27 Oct 2026 00:51:25 GMT  
		Size: 7.5 MB (7485012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c00a553311d671adf87f1bad981945aa2d49a943b388ccbe20ebac52dd7bb40`  
		Last Modified: Tue, 27 Oct 2026 00:51:24 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; ppc64le

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

### `clojure:temurin-21-trixie` - unknown; unknown

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
