## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:a7ce501e11def22f213cf30c6bd13b6d4e833f2aac6d32d033b1e6d0a8ae6a3f
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

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3df9c5c4ce067266f9a9cfee514d656c2065fd93a0854099c01749ce2b1508e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196956942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b62129ee356968899e6dcd45848875789435a950c6d263f8d3e0f54d1c4c11`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:49:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:52 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:52 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:51:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:51:03 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:51:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:51:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14324f8d469f97b11ab7670f3c8b159a9421abc2602a2700c7337d3dbc5ce98c`  
		Last Modified: Tue, 04 Aug 2026 02:51:23 GMT  
		Size: 145.9 MB (145905437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f7287c5ce05dd04564177f9e33bb827b5a9aadd896831846581040426a2b47`  
		Last Modified: Tue, 04 Aug 2026 02:51:20 GMT  
		Size: 16.8 MB (16754992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdb4cb639b492050541584d40e58e08bf10ba6188f9a5fd58b8493418fa26e4`  
		Last Modified: Tue, 04 Aug 2026 02:51:20 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e761c2dbe79476ff096ba2c1af0bcae761c7981afa33202e0568ebdff7768f32`  
		Last Modified: Tue, 04 Aug 2026 02:51:20 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:de30f9ec13b70a1c999a4a1065f8330bf8dcef38d740a7399a5656ed365b0e83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7bf176216ab4245c16041bc12b9341f104fbc7eaa0f2a5a62e7fcbbccdf8fa`

```dockerfile
```

-	Layers:
	-	`sha256:64e0fe9bbc9dc8cfaf117545500cde0ac0ee76213f316100f42d66793655d544`  
		Last Modified: Tue, 04 Aug 2026 02:51:20 GMT  
		Size: 2.4 MB (2367117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac9ad0f63975a4126d01f33b2f7ce21f2814fa99a225adacad37515d14fa85ed`  
		Last Modified: Tue, 04 Aug 2026 02:51:19 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:31aa57a7b6aa23f5b131f6b08821486ad33a296419bdf151db9297e9f4951322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196095090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e56a505fdd13f6951f7d1e913d900e9116aaed97513f8854a71ea660cc29044`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:50:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:50:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:50:08 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:24 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:51:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:51:24 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:51:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:51:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c102ff123d222c880954c94d954a84fab27d5c4555ede793951721318a9b2fa`  
		Last Modified: Tue, 04 Aug 2026 02:51:45 GMT  
		Size: 144.7 MB (144724281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613fa4fc6b14f20d024084fa430511ba98d145c7b2b18c52e8f3a42d1ec1d8f2`  
		Last Modified: Tue, 04 Aug 2026 02:51:42 GMT  
		Size: 16.7 MB (16711482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f5af2808423e0e4f861f21a3548a8a8f1140da8265f499321a7b34f51b5aac`  
		Last Modified: Tue, 04 Aug 2026 02:51:42 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5861a9fcbe90aa6985ad4e829c49f47a623bd745a8e5141f725525201f1bdb60`  
		Last Modified: Tue, 04 Aug 2026 02:51:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c9fed9358cb4941cd74e6c4a9868d6d32b7a4434e9404be8c65b1d88f4b6ada0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79173d2a55de2c48c516da0393460bfb5bbb5e7b4db581f5ee8e9da10649d70f`

```dockerfile
```

-	Layers:
	-	`sha256:9a2510afdc1871577c7b7b8e6008df3c24577f4db5b7e233c8ce6f81650c81ec`  
		Last Modified: Tue, 04 Aug 2026 02:51:42 GMT  
		Size: 2.4 MB (2366727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1904d0beef2892ab4be3208b6a47d666b9cad73162b9d2a9932bf3a14313381b`  
		Last Modified: Tue, 04 Aug 2026 02:51:42 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b6fad28f9c37cde563b7ce9187fcfe1c095f8d694c38af5809768404dce357fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200665426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6674e6d90b998dfd1f050d87333e38290ae53bde848bc914b3d26a7db8b3b913`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:41:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:41:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:41:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:41:39 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:41:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:41:40 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:44:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:44:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:44:18 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:44:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:44:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:44:21 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:44:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c238e024816cf59f7bcc40d6137f687e77402d51ca7aa991f5a3d83a53bafb`  
		Last Modified: Thu, 16 Jul 2026 02:44:59 GMT  
		Size: 145.8 MB (145766144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283b1340d9666b8478a76e91b9cc4ebdca128159c3fb05c522e23325333468c5`  
		Last Modified: Thu, 16 Jul 2026 02:44:56 GMT  
		Size: 16.8 MB (16782186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc3c123449ebb372894e465ee5552d0e578943921654ab3ddaac6c0d1684234`  
		Last Modified: Thu, 16 Jul 2026 02:44:56 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45457275fb07419edc8f026297cf6860f5b0d1530b6d1c4cbe38fe19500abfc3`  
		Last Modified: Thu, 16 Jul 2026 02:44:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a2ed428f4818fd7e97738d11e85132b1f370d413815e2dcbfe485c8990a1a558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ee55f5bd655de15cc6410dca2842db3a9060e66825fa82dfdb099a8710bb00`

```dockerfile
```

-	Layers:
	-	`sha256:6a94e69c8615234fe5de39437a2c22b8c4727fdab1fade306207a50dc32464f1`  
		Last Modified: Thu, 16 Jul 2026 02:44:56 GMT  
		Size: 2.4 MB (2368097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccf8685528aa79dbc112223c6074309bb1e62e27c8e818bce4880243a1859263`  
		Last Modified: Thu, 16 Jul 2026 02:44:55 GMT  
		Size: 17.8 KB (17795 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:342cb31a1024ad5655e26ba6c2047dde1d57bf8599962dda66621057276316b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187052577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7d1bb0182f4d56ad12b22c41fe523261bf2d9b5869b8921835055900618273`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:54:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:50 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:54:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:54:50 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:56:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:56:02 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:56:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:56:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0de4c460af7fc0af9e405e12a4550d66602028e257a457bafa7c1346c63d82`  
		Last Modified: Tue, 04 Aug 2026 02:56:29 GMT  
		Size: 135.9 MB (135910394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef751888be75d35f1d19f5d974344e0389485804b8f3ebf6bad56b5325ff70a`  
		Last Modified: Tue, 04 Aug 2026 02:56:27 GMT  
		Size: 16.8 MB (16779906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9d53646800b439df7d5e0722b74eea043149cdf138f2e018193cc940855ec0`  
		Last Modified: Tue, 04 Aug 2026 02:56:27 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0591292f8614a3554025800b042967efc3ce4b2fb55cd0aa246ba92a7f94db`  
		Last Modified: Tue, 04 Aug 2026 02:56:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1a04c09251427574c1ae3d5a4e00aa04e014278db0d6dba7ca29e864410d3ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2381296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9b7cc5b67f02054c112e4c393682885a994ed1f5c34b68d0b17af0480c8592`

```dockerfile
```

-	Layers:
	-	`sha256:e67a908a709cf4f34d75c483eaf312f6e34867510df84f6ff593ba6623777ade`  
		Last Modified: Tue, 04 Aug 2026 02:56:27 GMT  
		Size: 2.4 MB (2363544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd754fb773f4e1b34e3d44d662f5db1f42ddfac9e6c3868358282716a4e0c355`  
		Last Modified: Tue, 04 Aug 2026 02:56:26 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json
