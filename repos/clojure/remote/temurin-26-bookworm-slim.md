## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:0838a219b962c72d303877fbfe54168893adcd35002f72b6c4de6b10d30c08f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:cedf39c449d8c3c066eee1014df43724387506728e4edd4a8647fd3ff7e943f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189319964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de78b7d634588be90af76fe5890474f33a56201e963086304b521e5a70b7f76`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:15:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:15:32 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:15:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:15:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:15:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:15:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:15:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0e458bdbbff9dee521724bd4647891ea2c3f8fc39fb838f4948c915672424c`  
		Last Modified: Wed, 28 Oct 2026 02:16:07 GMT  
		Size: 94.6 MB (94563512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03fca9293019469c6b05ed23d48b2b44e820be7c38590e18a8eb4c87c3b5894f`  
		Last Modified: Wed, 28 Oct 2026 02:16:06 GMT  
		Size: 66.5 MB (66507970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf41dba8c97a92b4053d65f0a747cff1360bb5f573305a2e5b9f3714b0a666f`  
		Last Modified: Wed, 28 Oct 2026 02:16:03 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007546fca413a6bedf1d5664d4459ff0badc50175b16cd3954199b75b88ee9f7`  
		Last Modified: Wed, 28 Oct 2026 02:16:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c848c564210dc58820f62522c4873502afb09d7f90df1d9b988d8ce5042ad8a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5098917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f5e056940a013e3526e84b9dcc665cd758c7b70edad207d47d8196d77164e6`

```dockerfile
```

-	Layers:
	-	`sha256:092db6c39c74e553e2bed68c7ca2282cc994af6ee3fdd833897b9791c606e584`  
		Last Modified: Wed, 28 Oct 2026 02:16:03 GMT  
		Size: 5.1 MB (5082934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:132f2303c2695ad95b005da1af1727b421219c2a82bba56421f249dcb4b9398b`  
		Last Modified: Wed, 28 Oct 2026 02:16:03 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d13361986a444b194dd6071bfcadd29a598e2cf8235928fcf94502edf28717f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188183545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e83248bacffe344d1a2dabda8692c082676ca0c659b802addb41de9ecf6b1a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:22:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:22:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:22:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:22:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:22:59 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:23:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:23:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:23:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:23:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:23:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457eefc86a6cc474631f133f7378b86dac5a2504845588248a61b7323a143a35`  
		Last Modified: Wed, 28 Oct 2026 02:23:38 GMT  
		Size: 93.5 MB (93543622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf538d78b47c12deecb90907789d0fa536a3e9a30bc20ec90b9f63221c049d3`  
		Last Modified: Wed, 28 Oct 2026 02:23:38 GMT  
		Size: 66.5 MB (66500931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca4b467e9cb99966e4f221c496ba0eaffa9a5917b1cb2b91a6d46a72901c72a`  
		Last Modified: Wed, 28 Oct 2026 02:23:35 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e04a100eea63af060f0b3c632d4ceecd3336ff3f8905aa794007b26310a767`  
		Last Modified: Wed, 28 Oct 2026 02:23:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:622e742d9ec6bf264e11ecadc3df85eb4ffb2881737859ddf94a0f9953a8e494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ecc3f560ccee713458cd5d00d26801de05f0e868d8ffdd0d7d82c2e6f8b258`

```dockerfile
```

-	Layers:
	-	`sha256:dd3d3a024cdd33f712c9d13debc6b38ed4d125c952c0682bd6ffb052ba422d97`  
		Last Modified: Wed, 28 Oct 2026 02:23:35 GMT  
		Size: 5.1 MB (5088692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d611db1d3aa2835431f19714c18ff15b5ed3b9c345ee7b7d92d343c0942ea17`  
		Last Modified: Wed, 28 Oct 2026 02:23:35 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0f20799cf4e770b56f1cd6eaa227953766ebe6b4b1b9768072c8fa8a37364cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197777758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0628410e2a3e36983b20cbf15f5150b68ed2645e8781088437581752b84425af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:03:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:03:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:03:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:03:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:03:30 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:13:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:13:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:13:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:13:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:13:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b181dc2a83b940d69077a6cc6b9a90c0ff198e7ef6de7740dd65912334038feb`  
		Last Modified: Wed, 21 Oct 2026 11:07:50 GMT  
		Size: 93.4 MB (93350847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262a50ebbc2662be714d137cecb637429cb278eae85c6d7013c8251c98c9a0cb`  
		Last Modified: Wed, 21 Oct 2026 11:14:31 GMT  
		Size: 72.3 MB (72332656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a1f5b9aa891a61a4d65c293b6783baf52a22dce0c08a066454f36dd26d25b1`  
		Last Modified: Wed, 21 Oct 2026 11:14:29 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229a00a901a6c8fa28e135bb79883f155990f7619c70bd1f6dca84dcb13e2de0`  
		Last Modified: Wed, 21 Oct 2026 11:14:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a5dcaaab56689b327b95d62fe7b65a6218ac4f46970aad8c2db6851943032d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5088031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca26ca77b465cd0e1092abc85b4914ae80e7d2042dbcf5da8c698ccf5cae093c`

```dockerfile
```

-	Layers:
	-	`sha256:271acbd75a0c1cb5e6c878cf76d99e46808c2b4238314efb8c9bb73f31b836a4`  
		Last Modified: Wed, 21 Oct 2026 11:14:29 GMT  
		Size: 5.1 MB (5072000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efd3b729cd7eb1662005fc26b8d71be9cc7094bc1887b96f66ed2cb33a17b0cb`  
		Last Modified: Wed, 21 Oct 2026 11:14:28 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
