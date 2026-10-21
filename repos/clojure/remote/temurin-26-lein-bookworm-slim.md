## `clojure:temurin-26-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:46bc3a61d2f2afb2ea533ef4fbf94566251d6049a80d342aa63ecd9ce6505bed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2828b83c74ec3c4d8af39e6a050fba31b67cf7c423d61cf9dd6ecf2a2860eff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145400037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b840e1d62c2f24e19cfaa5ce24f312a8abdda5568645115f599ae663a86cf1f3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:20:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:20:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:20:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:20:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:20:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:20:59 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:22:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:22:07 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:22:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:22:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:22:09 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:22:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4099f5d639814da992fdd6e707baf5eeb738fefafb372ef2d38de8ba9999e2`  
		Last Modified: Wed, 21 Oct 2026 01:22:28 GMT  
		Size: 94.6 MB (94563481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d84dae258eca874f984e7f117ccca7edc7e878a08ea23be1ac64a5fc7b8244a`  
		Last Modified: Wed, 21 Oct 2026 01:22:26 GMT  
		Size: 18.1 MB (18072979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4deea495964ba5b41a584c78fd13a3974c7847d7224c03104936122a17a9960`  
		Last Modified: Wed, 21 Oct 2026 01:22:26 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9564aae781056c4f8062cdd2dfe9eb016ee48cc2f062cc08174358199691aa`  
		Last Modified: Wed, 21 Oct 2026 01:22:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a8558e108b988d55af0248b5af2702279519c8c437d0fcfcd8b67705878f38e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee21b849a61f218211fb431ec67abe3e42d0590e3702e321767a8bc924fc1744`

```dockerfile
```

-	Layers:
	-	`sha256:99f8382d5edb23cba5486547ca3deb8b91b8a7a706c4a3131a6bdc1b8a16ddf5`  
		Last Modified: Wed, 21 Oct 2026 01:22:25 GMT  
		Size: 2.7 MB (2701216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf534bf9eaa171af00a504fe8ec1957dca6c55758ea37bb72b9708af12182e25`  
		Last Modified: Wed, 21 Oct 2026 01:22:25 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f7bb944276c89e80850c5dbe1003694b2c05aca32a8cd84cece440d7477338d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144103773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d14f58121a47f4393770932176d01675144cba89b7f54bd7bdff61b9c2e589`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:27:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:27:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:27:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:27:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:27:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:27:00 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:28:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:28:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:28:10 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:28:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:28:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:28:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:28:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2966af034fbcaf5fc8a25cfea75d0fc668385ce9e9939a3cc78d34bd1877d914`  
		Last Modified: Wed, 21 Oct 2026 01:28:31 GMT  
		Size: 93.5 MB (93543594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb16fd871a10e9905073e3240f3dce8f9055d1b4c015d8b65e73676971e7aff`  
		Last Modified: Wed, 21 Oct 2026 01:28:29 GMT  
		Size: 17.9 MB (17906164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0732b2ce11f72c301ab5987687aaf9e54e8d157dab08abc439964c0f2a8a9796`  
		Last Modified: Wed, 21 Oct 2026 01:28:29 GMT  
		Size: 4.5 MB (4515159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2df7cd64eeb07ec489b5b0ea88dedf9055d0f4d2ea025fbd95314bacf852754`  
		Last Modified: Wed, 21 Oct 2026 01:28:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d42cd468143272b81a1d3feabeb5250f03a45d405160d6e37dfe72d4f13c76d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38b6db5ece871f27c18281d9ba7d666eb09af07ed96a3bf61d2970a0cb3bf6f`

```dockerfile
```

-	Layers:
	-	`sha256:37240036fd8b33b86b328bb9ec339db57bdcd038c93fde2459f1b5cb794694ff`  
		Last Modified: Wed, 21 Oct 2026 01:28:29 GMT  
		Size: 2.7 MB (2700828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac2192561c480dc3d4a0a27a2f552557e341e67c8f192595f6bfce195ed8024`  
		Last Modified: Wed, 21 Oct 2026 01:28:28 GMT  
		Size: 17.9 KB (17885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6c604d669193c5e1c6832c24b0af5b8c1a4dcdf02c3b9f47add9c66f7d024027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150693925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4724729edfde89c5a40b37193de41ca43be4576cba5373a0921829ddf151fe1c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 06:35:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:35:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:35:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:35:07 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:35:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:35:07 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:37:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:37:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:37:53 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:37:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:37:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:37:58 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:37:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40af87593f1c5a108df58f7ffc4a520346ada86e027c1d6399ef2e273da14e4a`  
		Last Modified: Sat, 17 Oct 2026 06:38:53 GMT  
		Size: 93.4 MB (93350855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ceed337ae00830ad9e24eba3b195ce2231b7242a3a774c0c15788a63d0b97f`  
		Last Modified: Sat, 17 Oct 2026 06:38:51 GMT  
		Size: 20.7 MB (20734992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050756e13c1cf78f409323c664adef37ec98834e92b23aa65f6b2c6c08810608`  
		Last Modified: Sat, 17 Oct 2026 06:38:50 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67f57b5f0c57d28131eb51ca9c858c8d6e5b9d0066d8b0a7dc4760c066d25e2`  
		Last Modified: Sat, 17 Oct 2026 06:38:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5f67cd69642a0a0fd025ef5a338dcf8650c9b87584e9a758a08264ed2b51bc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32460c08aff2d89f57f9fc555a138236f5190231c9e1327db94a6ef246a70f5f`

```dockerfile
```

-	Layers:
	-	`sha256:d7c345fbcb85634f06f2a6a14b1b8a44e283cc50dda6ce54b65fd12000626a85`  
		Last Modified: Sat, 17 Oct 2026 06:38:50 GMT  
		Size: 2.7 MB (2688280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:674d1939945b0b55139044e35a4ff7940dc894444794f62eb06d178c2dd6e94f`  
		Last Modified: Sat, 17 Oct 2026 06:38:50 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
