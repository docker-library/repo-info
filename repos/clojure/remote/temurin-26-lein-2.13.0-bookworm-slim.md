## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:05e0fb4aab1e13f212d5f8f0f66edd373f8080142d182af01b6016d7e031342a
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

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c59dd9ef0beacf8447410d7df991e23b667d9de39eda2d6e0cc403ba40ddf196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.3 MB (145345139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1862da0ab7de27c993add9039bbc99aec6e21269dd04daf53bac69be27f2cc65`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:23:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:23:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:23:07 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:24:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:24:11 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:24:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:24:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:24:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:24:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39cc7570b9fe62f1bab67c14ecdb447dff91a40951368cf350f29f973b5a004`  
		Last Modified: Tue, 14 Jul 2026 02:24:31 GMT  
		Size: 94.5 MB (94524312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6bd3aaf5abf2920441ad3133f23f9d033f5796b454d817e36674dd4c85d028d`  
		Last Modified: Tue, 14 Jul 2026 02:24:29 GMT  
		Size: 18.1 MB (18072584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:658bac9b8a7156f67d9f2c821888314a01eecabf9c981333df24cb3b3238ad6a`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6425ae4ad6bcb40e7ad3bebded3472edbb888c1a825a07aa9638a94f2a48db`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:881a62da383dd0831f3981d28f711eae93e6e8267c97891eb8f0b558750803a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2715030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e040cb0d3ed7ea275353912fcc2ef2ea780749a53294bdeb786aba8a1adbd439`

```dockerfile
```

-	Layers:
	-	`sha256:5a4a9e228d21556060e4e823d0983cc6d864fe8bc024f90bad7040ff93e784c4`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 2.7 MB (2697264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3760f920d6509640747ebafa36f151973a0384172ead407fcd8865e9b9191506`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9077c8e8d6450d947d109db5ef5d30d9cc5eeff3f003ffcf62820826ee45f38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144043327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2224382f0fad9e4c6187e0139dd1ccd4b7e452695158941ddd289b3b4adb1f15`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:30:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:30:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:30:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:30:23 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:30:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:30:23 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:31:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:31:32 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:31:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:31:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6718dcdde8ff671ac760f26fc95d4a13f40b37583455b70042968a9a14d2fd`  
		Last Modified: Tue, 14 Jul 2026 02:31:53 GMT  
		Size: 93.5 MB (93504359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc873408e5c446988f369c9b5f6991e3cca29d2b0c6350db2ba283b9acda868`  
		Last Modified: Tue, 14 Jul 2026 02:31:51 GMT  
		Size: 17.9 MB (17906098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5f46c7fbb208a96bcbbc85224de846cadf4d6a7ccb0e30083600150ef41000`  
		Last Modified: Tue, 14 Jul 2026 02:31:51 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a9231e9f5d5d6ef588f014b98e184e33bee9abcad2707074273315255cafaf`  
		Last Modified: Tue, 14 Jul 2026 02:31:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2b52eb9ff3e7cb5902d2f36bb867f5dc394acbef01f6ccdf8a780bebe91efe51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2714763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7049bffd35c53c63843ab110bcec8e89449899a3cf5b59cd5468bbe57104e2b0`

```dockerfile
```

-	Layers:
	-	`sha256:246345876ec956f9175299607f7ac856c57652e6645197bdab874f000fd9beb7`  
		Last Modified: Tue, 14 Jul 2026 02:31:50 GMT  
		Size: 2.7 MB (2696876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcbb3583d9cfc936dfed56bdb437891a25ea851c0d49f09fc48fc7c650deb404`  
		Last Modified: Tue, 14 Jul 2026 02:31:50 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4eaa8b6872fa98b38174fa42c50f01c827ef10b6470f0859d1498d0437a20c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148763690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f975ffeb17d2c4c5240a64ba658b9c9df0a3dedc14bf3b23c88f6af8e4a7cbb7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:46:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:46:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:46:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:46:42 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:46:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:46:42 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:49:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:49:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:49:23 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:49:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:49:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:49:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:49:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138e1124eaafebbf5053cad956e5af6afebceb4bb90e53a7c84739e5789cfe7e`  
		Last Modified: Thu, 02 Jul 2026 07:50:04 GMT  
		Size: 93.9 MB (93902051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed191ceec699c1c007d6c7da4fe6c95a859fdc7dbb8a4b2f46f67398a6f8319c`  
		Last Modified: Thu, 02 Jul 2026 07:50:02 GMT  
		Size: 18.3 MB (18264010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce150a7fe27f32d943a056fe5b6caca3ac293da486bfe5e54f3589967be7e8b`  
		Last Modified: Thu, 02 Jul 2026 07:50:01 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c472ab22d1236ae6d8b85be52d53419af8891f5ca093ce1185d77ca24453f6f1`  
		Last Modified: Thu, 02 Jul 2026 07:50:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5af1cddc11a8061fec2594714021ee5f97074ea9cb78fefc2588f1bac9bf6f42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2700807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e91087061cece82b02ec280a0bd2648e35b1eff777b34cda29222d821ada24a`

```dockerfile
```

-	Layers:
	-	`sha256:981ff574f17c8face203f276a66a35d56f35d22a0e707adcd56c051bdfb2fb63`  
		Last Modified: Thu, 02 Jul 2026 07:50:01 GMT  
		Size: 2.7 MB (2682997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c616dd729768e4caba884e35f1ce6609f6b45d03c5b770c804caf1a291f0d24`  
		Last Modified: Thu, 02 Jul 2026 07:50:00 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:6feecd70031ccb01ec643c3b44634eea14baf17456da8fb4d107ee94c5c38606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139665341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff765ad2e5b9b0bf2ca4928e7acb53914b7a2fe3a25b49300b0a67c5b3b3053`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:36:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:36:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:36:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:36:27 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:36:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:36:27 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:37:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:37:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:37:27 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:37:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:37:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:37:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:37:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9fd4c44728f9ba18a489265a8f0adefeb6be57b6bb398e5f0520057a01a4dd`  
		Last Modified: Tue, 14 Jul 2026 04:37:53 GMT  
		Size: 90.5 MB (90536928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b050c35365ddea5a93bac5e70dbd91b8b179f32d41646baccf2b53283e4a67d6`  
		Last Modified: Tue, 14 Jul 2026 04:37:51 GMT  
		Size: 17.7 MB (17724501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cea352989ded9c3f0785fa049a6bb6c0de065c2445182f6a7d57200b7707aa1`  
		Last Modified: Tue, 14 Jul 2026 04:37:51 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a8abd4527e40cff99ae2a3e013abf2cb5d78707a264ddd4d00e9cbd3b7995a`  
		Last Modified: Tue, 14 Jul 2026 04:37:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a37a5cd8a86d46556813ff4f7e5bffd43d51a242c53a3d19da3729ff3159a94b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2692030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9926527c61a306ccb656b33601fb1945cced6fe6fb9010ed7b22855f83c5ebfd`

```dockerfile
```

-	Layers:
	-	`sha256:29eb36335f30c5e2ae89d4120d534d1b89653d2e6477431656ea838376d3b8cc`  
		Last Modified: Tue, 14 Jul 2026 04:37:51 GMT  
		Size: 2.7 MB (2674264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e029e9862e08d25acd4bddc954bfd0f9d1c5ccae4959cad85dc40e2e70f59ed`  
		Last Modified: Tue, 14 Jul 2026 04:37:51 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json
