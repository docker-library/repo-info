## `clojure:temurin-27-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:033174f46db878c5023db0e01e7b8651bcdb1ac93089925848425b3e50aca863
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:aa2a26e1b312dfdbc4a489f2192ab9c95a7cc8d84f2dc8cec43962f940d2b27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222429709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fd6e2d66caa2907e8416e35a4f284539dbe2941b76b505fa3d6788e6148fa6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:28:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:28:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:28:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:28:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:28:14 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:28:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:28:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:28:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:28:32 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:28:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600594f39cab189e79d949d77d1eae379e74eccbc6327e72eaaf83e767a6ff87`  
		Last Modified: Mon, 12 Oct 2026 18:28:54 GMT  
		Size: 93.6 MB (93622506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd83dc82f9a1f1a5d55293a1cf65c482f11e3b4a21ba1f19ebda196175df11d`  
		Last Modified: Mon, 12 Oct 2026 18:28:53 GMT  
		Size: 80.3 MB (80288138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64edc82826df058014a9e2195aff88cabc9bf19fd30c31694fc15aa53642eb45`  
		Last Modified: Mon, 12 Oct 2026 18:28:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c381415445dfef4511c18c1864bdcb4f6a6d3165942a81c0d7d5e18f520af8`  
		Last Modified: Mon, 12 Oct 2026 18:28:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:334ada8f99e7284bc15bef9a78a093776f15a9a9a7a4de23293e296516fdcd12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7361557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300fbf04c107943c3e503d5743f9119c04e7546fe65e81cc90ff28c39aa7926e`

```dockerfile
```

-	Layers:
	-	`sha256:f756af3c2bf7fbd27e6c79b6c8ddcf296e23c830bbc74e38423bba3fe4bd537a`  
		Last Modified: Mon, 12 Oct 2026 18:28:51 GMT  
		Size: 7.3 MB (7344948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e82992ea8ca0d764c79ba2f22b0afb54a7be00eb7b220ae3ff463145a7801521`  
		Last Modified: Mon, 12 Oct 2026 18:28:50 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f7aaef77da28ea3296a7449d9b68a268f1960ac1caf27d8a1d0848c658c8e1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221278215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa64302f33703dbf1821f2a9bb3ae494c87a377d78c9f0ba7617db3734026309`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:30:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:30:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:30:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:30:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:30:10 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:30:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:30:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:30:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:30:26 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:30:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186fd82fb86b7d72ccaacf87f12276aabb828e6ccddf23342bd609fc75177a9d`  
		Last Modified: Mon, 12 Oct 2026 18:30:48 GMT  
		Size: 92.6 MB (92633115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a0e80479006cf2ece50065e217b855e8dbd1f41163a2a88f5df2c9f082da74`  
		Last Modified: Mon, 12 Oct 2026 18:30:48 GMT  
		Size: 80.2 MB (80242503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f1f5e416bc81d9ebf0fc18e1f294a803ecdbda416ec0831561cbb0301f5f51`  
		Last Modified: Mon, 12 Oct 2026 18:30:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1204e13d41feae3f41eee7118e0c80fac27692b28c2af325be6efc47fc7f485`  
		Last Modified: Mon, 12 Oct 2026 18:30:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:da3e1dfa7ba50658b611c422e679a694c4ea0d976fced9d04bc7f3490612aec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cb4286cab5924d7828d291a24ec7acf819d06fb351cafa63630a462fd34ec2`

```dockerfile
```

-	Layers:
	-	`sha256:0f21587fb4f716fb0915bec990d56d1af0fdaec8c52b36fddc322d37104db962`  
		Last Modified: Mon, 12 Oct 2026 18:30:45 GMT  
		Size: 7.4 MB (7350732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b10c2b288fa744b86d4488dd781d510a4613c0a22666586c5cb5e270d0bbb60a`  
		Last Modified: Mon, 12 Oct 2026 18:30:45 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:1e515e1dd8b0b79e5c7a43ce7de69469f81ad39c20fd7164b052cb834f340b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230910783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ccb2abfd7dd1079451087f1b4cd149de8149d07256385b7663ad5a35ebec19`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:17:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:17:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:17:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:17:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:17:59 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:31:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:31:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:31:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:31:21 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:31:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c35d2189bfffaa47d970581dc56eca0931336fc01963dc24bcb1872321d3f0`  
		Last Modified: Mon, 12 Oct 2026 18:22:20 GMT  
		Size: 92.3 MB (92255804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f18d9ff8ecf1e7559763ac30dcd8e8fb65afd1baa7f875e51fab0aa5e68ba07`  
		Last Modified: Mon, 12 Oct 2026 18:32:02 GMT  
		Size: 86.3 MB (86291197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6121070ac6f0726a6654d36003bb92feac83720804cd876c444a8cbb58872e`  
		Last Modified: Mon, 12 Oct 2026 18:31:59 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af523e2df53fa0b4d6c1695fac804235c1c842d7f7a50f4e0725e56029f9a0b`  
		Last Modified: Mon, 12 Oct 2026 18:32:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e977dd5013885f4305be1fd15490cef390d402d3b8491672fb76fcde9e941b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7350779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb815186c806693b29fdf92ccba9ea5f9f70e7f7f1adc2e788fded8baa286904`

```dockerfile
```

-	Layers:
	-	`sha256:34309f5153a0c3783ba731a0ca0658556d38c9276d8c7424478a1d922bbbdcbe`  
		Last Modified: Mon, 12 Oct 2026 18:32:00 GMT  
		Size: 7.3 MB (7334110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eda8d7be5895c474c53d7a7db54b05023b408c268ec9ecfa8131b1ca1f6a02bd`  
		Last Modified: Mon, 12 Oct 2026 18:31:59 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
