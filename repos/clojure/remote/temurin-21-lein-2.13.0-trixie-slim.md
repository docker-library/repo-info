## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:7316782d1bcfdd8dc09e6c89d48a6c68aa862bae638a4483467dbf4849406d5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:18509e0959af970f7d2555c038da0eea22fd8fcb2fc3d6386224c95e8b11f7a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209230057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30859cb30b7cc06a4a0bffb247c98d4f50e501f2eb3dda9154edee2207da1256`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:12:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:12:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:12:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:12:51 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:12:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:12:51 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:14:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:14:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:14:13 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:14:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:14:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:14:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:14:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eb8c5062e976bcc35d96c7b2d0220213624b3742db5136f95c120c3ecacc41`  
		Last Modified: Wed, 28 Oct 2026 02:14:35 GMT  
		Size: 158.1 MB (158117470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d39116fd21562cac5ee80fbac5b4a7b827ab1393d4e09fa94bed89d25c91cc6`  
		Last Modified: Wed, 28 Oct 2026 02:14:32 GMT  
		Size: 16.7 MB (16741750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47e77d4a210ad7c1becb50014cf8ffd1ca0a6df95fbfc2078217e6a3993ea47`  
		Last Modified: Wed, 28 Oct 2026 02:14:32 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df039c64d9d9d1b9d26e85877d55d894679b1e1a4faf0a1ed90eea5186af49e1`  
		Last Modified: Wed, 28 Oct 2026 02:14:31 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:878bbb5726abcec4058ffb318d3eb92d163a30080e57f00f9549b9455569ada0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c02033d0de6564ac280b461b02f18fe945fc067f74935b0eed1fc4139346ce4`

```dockerfile
```

-	Layers:
	-	`sha256:e3bab01f7c9e26d4addac455183cf7e1b43fd060471f27120b688c4a51a731f2`  
		Last Modified: Wed, 28 Oct 2026 02:14:31 GMT  
		Size: 2.4 MB (2373606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edaefe14f47cf7220f9544d9bef63a61ecb45021088fbe5225a69b2aa6ebe1eb`  
		Last Modified: Wed, 28 Oct 2026 02:14:31 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:38438e3424ab5f2de26626389751e95d875f2c15a2f1672669066a94b7a6d607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207847504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbfd133bc071a1431b6ebf0435c4e7c262f0a82c05f3798f4e3eff15138c8fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:20:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:20:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:20:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:20:08 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:20:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:20:08 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:21:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:21:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:21:34 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:21:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:21:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:21:36 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:21:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3219995efe71c71d125689f1bf1daa008ca1c9e8c804a0c6dd88bd8fd1facd`  
		Last Modified: Wed, 28 Oct 2026 02:21:58 GMT  
		Size: 156.4 MB (156400626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead5637d8ff3fc8c1004faeea3f58561d6fa1531b203ecde73a09603bc49d2df`  
		Last Modified: Wed, 28 Oct 2026 02:21:55 GMT  
		Size: 16.7 MB (16717737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e79ba7bacc51fe9bd5b0ed691716c9d641d7a6ddaee0a151d7e11dcc9fc080e`  
		Last Modified: Wed, 28 Oct 2026 02:21:54 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387851134b41fd17c28cf1154b07c06a0146561f130da81e1fd364a64f8b698c`  
		Last Modified: Wed, 28 Oct 2026 02:21:54 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eb4d427808f3f848d6552b5d050afec7d7f3647af55fd88ee05a2f9b3636f264
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60ed99ce3243579b87a90c9f1d85348c5fdec03e35cd490c2462613c5ad2d38`

```dockerfile
```

-	Layers:
	-	`sha256:3ec184a61ce9f1994cde08f7a37cbc21ebd77010532631b1a7a687a7557aab13`  
		Last Modified: Wed, 28 Oct 2026 02:21:55 GMT  
		Size: 2.4 MB (2373216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:454004e55f380fa70327eddece1c71f59f9a9b9545fc1bd37691f27fcbee60e3`  
		Last Modified: Wed, 28 Oct 2026 02:21:54 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:67185556d41d8a2459c2d4abdfd707911caa93decd471848e5389f6c7f890526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213229424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14c8c8babfc4a143ef48e678b9b4d9dbf5b2305c3029813074f326333f2b2ad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:39:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:39:42 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:43:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:43:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:43:57 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:44:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:44:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:44:03 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:44:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2c71451c8a0ab7adac8e6a3f1288ca59d6d2306d4dd9a24899545c84926ac3`  
		Last Modified: Wed, 21 Oct 2026 10:44:56 GMT  
		Size: 158.3 MB (158282665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24fd7147bbea88fc8556c9ee22b9bf9fb0ce46904d9ca0509a01be6724e2fd57`  
		Last Modified: Wed, 21 Oct 2026 10:44:53 GMT  
		Size: 16.8 MB (16779180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c69e6c809807c4212b00ed3d3956c08dfbcd7e91890863e15aa1117d2500072`  
		Last Modified: Wed, 21 Oct 2026 10:44:53 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a63251b60fb5b025779ef17da99edd36597f7218eed9cf984b3a4222e15abf`  
		Last Modified: Wed, 21 Oct 2026 10:44:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4ba0917df0393137197e965dbe499ee1a45c71a40ce88d2aa22e5c33f56d83c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed6b12f746b3b1aa163814f750454221c2c33bbb4d8bc8f844a994cce97a139`

```dockerfile
```

-	Layers:
	-	`sha256:790309e48ce41c2c7b5b544d42ded0d5141630e80550a3efbdca8297a9e6ed2c`  
		Last Modified: Wed, 21 Oct 2026 10:44:52 GMT  
		Size: 2.4 MB (2374586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361e8ddc84dcf435ab8e8f49ef26867f199a07ac0799575ece371d9ef83fccd2`  
		Last Modified: Wed, 21 Oct 2026 10:44:52 GMT  
		Size: 17.8 KB (17795 bytes)  
		MIME: application/vnd.in-toto+json
