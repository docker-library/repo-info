## `clojure:temurin-26-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:7abf7f1c925bd1c3ffe70b6eb12d8f800f2184ccb608335bd55567ce1696b53e
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

### `clojure:temurin-26-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:88762d650bcd1ff6ef06d79039e16e91657006164bc469a59f171bb9c90d9360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.3 MB (145333281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7180eacb78e9b000307b9c951371c3edd2635a41cb881d16a1c0bd6b5d574ad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:36:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:36:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:36:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:36:03 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:36:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:36:03 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:37:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:37:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:37:11 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:37:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:37:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:37:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:37:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c29510cf7c5b9e106ff4f2e0f301559d8e42c9b651024c5ee9f0c4a85aad72`  
		Last Modified: Thu, 16 Jul 2026 01:37:32 GMT  
		Size: 94.5 MB (94524401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0062265fdbbe55c6f9246f0fd50e40c9ec670bb85b1f117e4d81a9047e340a`  
		Last Modified: Thu, 16 Jul 2026 01:37:31 GMT  
		Size: 18.1 MB (18060588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f176d77a1d0b07219963ee3769881248ff1977a98c863c2841d93d008c33b5d2`  
		Last Modified: Thu, 16 Jul 2026 01:37:30 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14de903727620f5ec832a6bf529511723602899f98955cf17ae5eeb3eeb94932`  
		Last Modified: Thu, 16 Jul 2026 01:37:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:12022dd147039ce2d2cae8b3837f343e9ae2f1301f5b694a0aa79b9a769c4217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2715030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68e2500ffc20cce7bb361f6b33e21ef4c795588f4778c57892d6dd231169faa`

```dockerfile
```

-	Layers:
	-	`sha256:ae18909829c18e811dd5a4b087cc8d680a259a111963d4d2833fc0cf4e43815f`  
		Last Modified: Thu, 16 Jul 2026 01:37:30 GMT  
		Size: 2.7 MB (2697264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4772917a8fac9c9c9ef1c22e8ca0e31064d07318334c04ae4f63761aa1cfaa2`  
		Last Modified: Thu, 16 Jul 2026 01:37:30 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3bde4774a73b393102bebb83517aad5dd228d5b060ee27e24e7a7ad525dca731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144043040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88628e8dddcbe6d1e8e5a122994fdddc910962e626b84d14ddcea00287a25a76`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:31:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:31:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:31:55 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:33:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:33:04 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:33:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:33:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e996fbbd408bbd4e8d1493d958f841c415565665ecfef5335f73ada14a762447`  
		Last Modified: Thu, 16 Jul 2026 01:33:24 GMT  
		Size: 93.5 MB (93504346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960cf59bf45ac1a45faeac2f99b2e2bcd9b3402d0e5dd2dc845e46f349d5178d`  
		Last Modified: Thu, 16 Jul 2026 01:33:22 GMT  
		Size: 17.9 MB (17905831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063144f904bb509627c22a590e53f8f06b03a64fd4e5462c80191dbd68f6a71d`  
		Last Modified: Thu, 16 Jul 2026 01:33:22 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f249de17c034df81c4340c8d726b89d6c8b00806e25a5f7413880d66f98892b`  
		Last Modified: Thu, 16 Jul 2026 01:33:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:411c63461829f4a646c15f3d05d050ed72a76628070faeb1027aa87bf997faac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2714762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8fabaf9161075171702d3aea667955c4bdd7515b2e6fecafb38e412b1c8b67`

```dockerfile
```

-	Layers:
	-	`sha256:e5d8051c3b281d5f796c02d933144f412f11c02dc6d492aeea02333224627d6e`  
		Last Modified: Thu, 16 Jul 2026 01:33:22 GMT  
		Size: 2.7 MB (2696876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4123d09c8092eaa98c4fbdc6daf4548205bc2205d365d55f32e0528ddd3f0c6f`  
		Last Modified: Thu, 16 Jul 2026 01:33:21 GMT  
		Size: 17.9 KB (17886 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:091046cde656059c20cc469a73e5ae7fd00d0f843921234b5ce1eb045cc482e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148757648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc138e95d88a6c44932fac286c44fdb6f3606d848f1cf3703082038b9bcca0d9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:55:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:55:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:55:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:55:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 08:55:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 08:55:04 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:57:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 08:57:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 08:57:19 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 08:57:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 08:57:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:57:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:57:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3015897eecfc0da8a57a3f5292bac9d82783deb51fbef75d70363d1fb6a78c81`  
		Last Modified: Tue, 14 Jul 2026 08:57:54 GMT  
		Size: 93.9 MB (93902026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346ba98424b4d8244538e37f410537bb93d744de47d866a840be96b8b699aeb3`  
		Last Modified: Tue, 14 Jul 2026 08:57:52 GMT  
		Size: 18.3 MB (18263604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9747f96e6deeaf98267539c2daf2eb3e7feb5fe6753b1ea6e5dc151cec26e7`  
		Last Modified: Tue, 14 Jul 2026 08:57:51 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0084b50c5e817d820ac04dc3f66ca57f4b3df3fad5bdc27fe9355022774018ef`  
		Last Modified: Tue, 14 Jul 2026 08:57:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3ef3f46332021f679a7e689ab3f1b9a9c453e1b981f15de3304342a8feace72a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2700843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01cd2485b3f23ac44851d7f158043b65e450cc60d648ec2d4cadcc13af96a916`

```dockerfile
```

-	Layers:
	-	`sha256:bdae8a41bd7bb8734056db1205004009b21da49578eba421f9e96f948532c991`  
		Last Modified: Tue, 14 Jul 2026 08:57:51 GMT  
		Size: 2.7 MB (2683033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d152127fb09951e1ef18332b09c5d06826388b7ac42b0a24b568a03eec2761`  
		Last Modified: Tue, 14 Jul 2026 08:57:51 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:c62d96c711bdbde1665fb3be02e2c6c3673e1c1e0c6fb697de3618cde4e96ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139665696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072f25405b97653cc2e40c0e1e7e73fda37d2481472c4d1f3cb7e6a90f2117af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:55:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:55:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:55:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:55:53 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:55:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:55:53 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:57:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:57:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:57:03 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:57:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:57:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:57:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:57:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357b5f503198dc02aa36072104c563dea2d3f655b12449c086f5a46b8a249d36`  
		Last Modified: Thu, 16 Jul 2026 01:57:31 GMT  
		Size: 90.5 MB (90536944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ace91b0c239f0659538a1ed63dd4d15422033c96bc0e94626f5c89dd55b0877`  
		Last Modified: Thu, 16 Jul 2026 01:57:29 GMT  
		Size: 17.7 MB (17724860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239e35e6c0e22a1214b66b529906b040976bb40192354f22af93613825099664`  
		Last Modified: Thu, 16 Jul 2026 01:57:29 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eaa048a9f47aa95fee1d51cb02129152d42a194a567014becda35f4cc6af613`  
		Last Modified: Thu, 16 Jul 2026 01:57:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:550faa95e415681b4ed405601cac074a8ca0e84360d814bdcdbc5aa19f643fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2692030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea197a88043a73f5d98b612ff89774dfc2b6532049ae8aea11bd141893f4f5ac`

```dockerfile
```

-	Layers:
	-	`sha256:166a699f740b45797eae8aba79c4776aacb136818aacb5fce180a15f8a11ca86`  
		Last Modified: Thu, 16 Jul 2026 01:57:29 GMT  
		Size: 2.7 MB (2674264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef62da948e3a1596afcb189ba995a86f0f9893a0cef5c23a8583f0ca8c4b0b39`  
		Last Modified: Thu, 16 Jul 2026 01:57:29 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json
