## `clojure:temurin-27-lein-bookworm`

```console
$ docker pull clojure@sha256:b09bdb52f964084351074e2981dbda1ea6c860bb3462e2eda79e256c858556f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:81d05febab295ccbb98de896e26f808c2174e8a39ff736902d21e7615e1d956a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166823453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f621eb3ab438aa751f8815ea7165dabf9bd633e1745a2fe0dae166e0df2b4a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:43:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:43:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:43:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:43:17 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:43:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:43:18 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:44:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:44:23 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:44:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:44:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0359a07c39116fe55816a22f5dddd8026fa8a2b3cbe48c8fa750fec53638544`  
		Last Modified: Tue, 10 Nov 2026 00:44:43 GMT  
		Size: 93.6 MB (93647861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df4dc97f1fafeb33d1284ce23147708ac7d29862d218fcb0a3ad7174f6d779a`  
		Last Modified: Tue, 10 Nov 2026 00:44:41 GMT  
		Size: 20.1 MB (20132972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c473c4d61d6f8f30274eb7c6496342f80a3ed04c412bd230b45bdc189556eb2c`  
		Last Modified: Tue, 10 Nov 2026 00:44:40 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06bf46c777b7aa1cdf9f637d4a97e56c23051a20b69a4b1341fed45ab75bf8fd`  
		Last Modified: Tue, 10 Nov 2026 00:44:40 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:79206496e3546dcc2c42b7b588a312aa4e7d22defaf5e93df23d42ea8df6bbe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a52719a574e29b3cf52d648ecbb079c72862c91a0d051986050b844bb091df`

```dockerfile
```

-	Layers:
	-	`sha256:a2f35067915e50bbff1f95168b8f75c8803b42288f4b6c8dc7f9e749046a61eb`  
		Last Modified: Tue, 10 Nov 2026 00:44:40 GMT  
		Size: 4.3 MB (4252308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9414ee2c4dc8f43bb5cbfa8cf4f4224113dedf8ccc1c37a7409ee2bdbe7c1d2d`  
		Last Modified: Tue, 10 Nov 2026 00:44:40 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2dad04cff363c0919e677a0e8d9f56a1bcd80bb77c1847688bd269df24a0b78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.6 MB (165556131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ba47202a4b412de072a2c373e94a9c8a3420f18456347bef564473ef9b78e8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:42:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:42:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:42:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:42:44 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:42:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:42:44 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:43:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:43:54 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:43:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:43:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:56 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b142ffc737f76b8a5ac6340c250ca20bd12101d33d4422ffd3da746267a3f289`  
		Last Modified: Tue, 10 Nov 2026 00:44:14 GMT  
		Size: 92.7 MB (92660492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e11a9b5ae043274d359cefdf96b2209087b702e7b09a2853ade097bca867e18`  
		Last Modified: Tue, 10 Nov 2026 00:44:13 GMT  
		Size: 20.0 MB (19967041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431ece7baa6d180a31c2ad412ecac5bf1a9d23b37ef6c4c2db2e89b74398e903`  
		Last Modified: Tue, 10 Nov 2026 00:44:12 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5c4f219115e606b133e87277ee4bffa3a4e958c4436199865b24f2ee461b62`  
		Last Modified: Tue, 10 Nov 2026 00:44:12 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9e20d5c753ba657e86ea4a534fe993151504cc701dc60bfa96ca1aa659c44036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a4f21ccf69f3cfdd4efa4aeca00c93b2b0be24b226dc3af9e34d332f720dcc`

```dockerfile
```

-	Layers:
	-	`sha256:3b38a04e17f77bd1568b649372d5b22c216a6359892434894427299fb4e1d5eb`  
		Last Modified: Tue, 10 Nov 2026 00:44:12 GMT  
		Size: 4.3 MB (4251944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee1877fc2897dc63e3b164004f70bf80456ab81c55d8e0f5d9d922084036480`  
		Last Modified: Tue, 10 Nov 2026 00:44:12 GMT  
		Size: 18.5 KB (18525 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:849111747140fe2ccbb1d0efa722562e2d1ee2e453a93fe66641bc980baae371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169167727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30b85b716620a95dfa8968215a904f8596d37cad8d3ed70f5c41a52405912c7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 02:52:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:52:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:52:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:52:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 02:52:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 02:52:29 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:56:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 02:56:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 02:56:15 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 02:56:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:56:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:56:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:56:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013e75d38b2fe5bbc4bc23e1222e27c678405808c109729123654e27aa51a377`  
		Last Modified: Tue, 10 Nov 2026 02:57:13 GMT  
		Size: 91.9 MB (91925710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4b68721257c168beff380c329470111a7ca625202bdafd56804bdfc566804a`  
		Last Modified: Tue, 10 Nov 2026 02:57:11 GMT  
		Size: 20.4 MB (20357258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685572e07c83f2da694d37068f71d0bb039daa8125615293426ce716c87dbd98`  
		Last Modified: Tue, 10 Nov 2026 02:57:10 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1020cf2fac530a2b81950cffcf9755422e58fd0bdcf81677e1a34ee716567a14`  
		Last Modified: Tue, 10 Nov 2026 02:57:10 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:be922deaf56bc3293f453c9aa4e4440ef85ad04cf2f3b7cfc83b9e6a856bf23f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d066e06601bf12075b456830e5a69b08a0587ee3f2a4ebb16cacc7c90e57943`

```dockerfile
```

-	Layers:
	-	`sha256:df2c757fc1407539e234088f8d2f9041a9ed66fe089841820849722e15287a00`  
		Last Modified: Tue, 10 Nov 2026 02:57:10 GMT  
		Size: 4.2 MB (4236256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b68a39a80b2190da613f6e91c9bc913a1dead0a399aedb0370bcc5d40bd1c085`  
		Last Modified: Tue, 10 Nov 2026 02:57:10 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
