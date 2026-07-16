## `clojure:temurin-17-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:f7db1fec4d01cbcb22c32a519dc1f349ae30c89df162c4dc94095ae490745dd2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:55b0715b1a675fc983e4d42f01390b5ad8a114b2fc457e49c2ae509cd1379024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196313219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6498fb0cccb4807b55ea1069ec4d38d5cb652ce6d0b726388732e2f2377e46`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:31:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:50 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:31:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:31:50 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:32:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:32:55 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:32:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:32:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbb5662c56e649311ca7c3a1fb364cf5bafc3818f693d9598a1f5e0bae2b5ff`  
		Last Modified: Thu, 16 Jul 2026 01:33:14 GMT  
		Size: 145.9 MB (145906365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75cead9bc9f89fa7ff3c33a8560a3fe48b7d02c2d3a7e79db7916130c3f4bcdc`  
		Last Modified: Thu, 16 Jul 2026 01:33:11 GMT  
		Size: 15.6 MB (15631451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6a970f822edc8b0f1d33f1e4cb73f24c23cbe6dc9a039815a838850d6738fa`  
		Last Modified: Thu, 16 Jul 2026 01:33:11 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb66530d7974d62f0eea223d2e8f48ccc23627c505cabcb84d8cf3e12c83ab8`  
		Last Modified: Thu, 16 Jul 2026 01:33:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4425160c62d63dd5b591db2ff173bfb5c5476f0b1c7d2b968b5a6960908db59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f8cfdf574c2ad5cf5058bc6615e04e41449773a2d0fd89c190eb6b40af0281`

```dockerfile
```

-	Layers:
	-	`sha256:877dcc3d0da471aa1741a9687b69a21f6c157d1556eb7f68155f9627e9762389`  
		Last Modified: Thu, 16 Jul 2026 01:33:11 GMT  
		Size: 3.0 MB (3037112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d389936303ff321346fd389c516778eeac0b361f8ed40a98f701e7d896845051`  
		Last Modified: Thu, 16 Jul 2026 01:33:10 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3fba21882d0dec33c09641934b45159715fedd789c117447cea711762a6ed554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193620873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c0147dcf9932beea31207ac78bc222347d53a4ac163990c9c141ce9777a793`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:24:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:24:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:24:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:24:41 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:24:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:24:41 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:25:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:25:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:25:52 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:25:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:25:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:25:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:25:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc6ed6504423ae6d5166622ffc4b39fe57187ea044899e804bfdb1d3701827c`  
		Last Modified: Thu, 16 Jul 2026 01:26:13 GMT  
		Size: 144.7 MB (144724314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4942e966e190fe2a69cffd1529dc3be0e9dbe1cd215939a40c526498537432d5`  
		Last Modified: Thu, 16 Jul 2026 01:26:10 GMT  
		Size: 15.6 MB (15631928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7842395d759a50935fc53e75ddd595663a9a6e97cc1f7f8e2945bee87697e6`  
		Last Modified: Thu, 16 Jul 2026 01:26:10 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d79e390c1d9965c3da0c7a00ffde3c8eda6a8392b1c60f776b7906995f2830`  
		Last Modified: Thu, 16 Jul 2026 01:26:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:698f5c6f92dbaac8b76c5e017cd42ca47fb5fff863971a337f0f4bf0a7ff1a92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3054614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe454a95a396905c625f5f8599355661f01c14dbf140dac2b03e0766e54c317a`

```dockerfile
```

-	Layers:
	-	`sha256:ac950a1137d081570659cff437a51124573670484b4a385eac97394218298096`  
		Last Modified: Thu, 16 Jul 2026 01:26:09 GMT  
		Size: 3.0 MB (3036721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f81cf310ebe36b60ba69d254d743f3d30cfe1b986ac8e4170e5beadd6418cb`  
		Last Modified: Thu, 16 Jul 2026 01:26:09 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json
