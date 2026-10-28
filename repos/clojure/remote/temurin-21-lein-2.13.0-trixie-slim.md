## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:57f7d2c9c61e97c2c4a15e1671d4dbea80ca72de7c08a620d87c4b22d8c72007
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
$ docker pull clojure@sha256:3877e2529be8ce1d3f6b461ff09d2873371198e9ab8b2fff0d7154a540f67d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213243309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a48642e653e7f0c94b31698a915c9cb7c70f32c182051ca96e04dc54175ba1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:06:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:06:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:06:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:06:36 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 10:06:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 10:06:36 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:10:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:10:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:10:23 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:10:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:10:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:10:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:10:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b0cbb2f460ee06d62a8a618c39ccba555be71a056744830d2dee60ef7ca576`  
		Last Modified: Wed, 28 Oct 2026 10:11:12 GMT  
		Size: 158.3 MB (158282631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e635f71dc2b14fa8de2e530a15198067d71c5d6c023a895ece74cdaa43c6ec46`  
		Last Modified: Wed, 28 Oct 2026 10:11:09 GMT  
		Size: 16.8 MB (16778755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e638755dc7a4febd46e76c9c6dca074c84b88e64ba1148e1ee4e6d164a03f4f2`  
		Last Modified: Wed, 28 Oct 2026 10:11:08 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f38de374decd38579b9b66fbe57978f8ded6a7a64f713950f6931c8f9e34cf`  
		Last Modified: Wed, 28 Oct 2026 10:11:08 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:59219be1537ddee5602c8bb27feef18be20c28c0ceab8c61d01469210f995585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b2cab7dee734c713174a3cd2fb1b5497963ee8a7fdb6bd7e7ca49a3744c0e9`

```dockerfile
```

-	Layers:
	-	`sha256:79d38264187f878c6439f7bf443c136634a8917b03c4204b09efe132738452c5`  
		Last Modified: Wed, 28 Oct 2026 10:11:08 GMT  
		Size: 2.4 MB (2374586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0ae07bd748e9ea7a16cbc148f577ef67c7fe97b07b6c98872d6ab761f11d377`  
		Last Modified: Wed, 28 Oct 2026 10:11:07 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
