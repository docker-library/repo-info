## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:d72387f8d9dc214e8be378e980a4efb6d477910c2c246a203a4d0359c8996b99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ce32bf175188ac763a6afe30722a3e4b9ce8d12009f42bd4a501e52b2e32c5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196950168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861ee81e97104a99e9b34dbe8c60a9110419f697cc65c5d61d306f0a291fb876`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:10:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:10:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:10:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:10:02 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:10:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:10:02 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:11:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:11:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:11:16 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:11:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:11:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:11:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:11:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb5ee24abb388f56db89245d9ec41451f9d0eb624184d99465f4e18890c7dea`  
		Last Modified: Tue, 24 Nov 2026 05:11:37 GMT  
		Size: 146.1 MB (146114277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e5c132c0bb32a4e921c9467dad0178307f8151d8610d388f6888e59668a4b1`  
		Last Modified: Tue, 24 Nov 2026 05:11:35 GMT  
		Size: 18.1 MB (18071814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e283f3934618379173cddc042045605e162e38a8f7843ad6c7b7234b46c38d2`  
		Last Modified: Tue, 24 Nov 2026 05:11:34 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba41b2b3cac973cfc69413717e445677a570e2288d71c3824a0b08e11c4ed2e7`  
		Last Modified: Tue, 24 Nov 2026 05:11:34 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:32ed1fc50963d1aa1e2da7832425d330cf4a3103ebb62d41de285847dc0b53e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7508b9089c855aab78f543c6a3096f62167606f585a8f51f5ef6cd897b295e7`

```dockerfile
```

-	Layers:
	-	`sha256:399a6a440a053cf652697ef51115b6da8a33ba01045f4d2d3c8fa1d9ceaaa382`  
		Last Modified: Tue, 24 Nov 2026 05:11:34 GMT  
		Size: 2.7 MB (2736323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfdeb8f6d732b9aaa79626948ee95c161d7227d651eec3e0494f85ae65bec669`  
		Last Modified: Tue, 24 Nov 2026 05:11:34 GMT  
		Size: 18.4 KB (18369 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:da80ae2e7e4586df14d7d8e587bbdd3017a7aa70970f9a4a1fa45aa6a16d14fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195523979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67551b748aac41c705f17b3561edc8c28d40832203f5239669ae3c2591a98daf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:03:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:03:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:03:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:03:18 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:03:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:03:18 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:04:29 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:04:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:04:29 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:04:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:04:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:04:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:04:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346ba58bb31ff11f879594790966289e11c1f23e1d0f572753ca2766d4340d2d`  
		Last Modified: Thu, 12 Nov 2026 01:04:51 GMT  
		Size: 145.0 MB (144957159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc00f72ac40b9ad754d190ddcb4d0e7fe509f8d83d5ef1e2a889f80daaf1dfb`  
		Last Modified: Thu, 12 Nov 2026 01:04:48 GMT  
		Size: 17.9 MB (17906339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12eb750237e5c8e2020faad43d1f1cd6bca9d85dce2c40460d46d8333bebcc2e`  
		Last Modified: Thu, 12 Nov 2026 01:04:47 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1eb27b2632c4c422d2f558bdb0ff4dd9f2184d5ba1701d2f713f4c05be516a`  
		Last Modified: Thu, 12 Nov 2026 01:04:47 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:532ff945fdb97f323f9308718d3e6b2913abd035c2fd28f5ab358794fcb3f474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8573beac3c281bdfd51fab8ebf9b70900b5ee5540eda5e8e739efa08b94779`

```dockerfile
```

-	Layers:
	-	`sha256:a90262ced7d895b1d3d5d3c88c5cc62123385766b547a37c37e193722a7fc076`  
		Last Modified: Thu, 12 Nov 2026 01:04:47 GMT  
		Size: 2.7 MB (2735930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ca3347ef2e44e983e0dc542f807ce94d7a811e1dfb00ce12e095318b1b5f4b0`  
		Last Modified: Thu, 12 Nov 2026 01:04:47 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bcfaa4cfcce2bf97036919eea941c6dbae11a1574483aea20a42ee9e3f854775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199781251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2e64d45cb126a614613aeb63b1f7fe989f8bfbd7b9e60dfa06e934a365faa9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:14:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:14:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:14:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:14:28 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:14:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:14:30 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:12:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:12:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:12:20 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:12:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:12:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:12:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:12:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a224f32b4613abcec12974810a9ee61a493bd8337f9f6c0b67261fd488c02044`  
		Last Modified: Fri, 20 Nov 2026 19:17:56 GMT  
		Size: 144.9 MB (144892615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad10b713a0d06dca5f24c9019d35c9e6fd38a9e5bb954bf9738bf26f716311fd`  
		Last Modified: Tue, 24 Nov 2026 00:12:46 GMT  
		Size: 18.3 MB (18278881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0beab9800469dc35787659b82e21c1e0ceb61de0cbdc64d8bbaf7b5f0277a410`  
		Last Modified: Tue, 24 Nov 2026 00:12:46 GMT  
		Size: 4.5 MB (4515261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6a659fb7281ff71510e8f4f23abbd4d5c568e34d01e3c2bbed7ef38633c0c3`  
		Last Modified: Tue, 24 Nov 2026 00:12:46 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ea5c660f112123992116a43cb19e82a1915b8a4dfd51239191a2dcdc33371ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2067b3bb735b8ef0a0700bc77025d89be2029b939a1985f8ca2e042d00a7c738`

```dockerfile
```

-	Layers:
	-	`sha256:5f4ed1f69957377db98d52dedc778bc17fc6f6cffe1e103c8f79da3a6e34b64e`  
		Last Modified: Tue, 24 Nov 2026 00:12:46 GMT  
		Size: 2.7 MB (2736910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7c53bd1b8ca76d07ec3c3f1203ef32cf2190ff2cbc527bb5c97f9190b9e3d6c`  
		Last Modified: Tue, 24 Nov 2026 00:12:45 GMT  
		Size: 18.4 KB (18413 bytes)  
		MIME: application/vnd.in-toto+json
