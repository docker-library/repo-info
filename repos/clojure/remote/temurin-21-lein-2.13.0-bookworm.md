## `clojure:temurin-21-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:0c3f239e9237bc12315f4f2bd8df3889a9bacec1f0161bf6e2d4c353ac2a8e6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:f9697fe77c4d4d829051f2bb01338f5a7be8ccc377a1eab15446575bb4f0f555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 MB (231582282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d112413a7590de9d509627995aa8329fdd962693d8b2b18d9001d49a84d62ac6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:03:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:03:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:03:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:03:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:03:32 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:04:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:04:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:04:44 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:04:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:04:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:04:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:04:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:217aa17d8e4cdd35068b66316e508c0a555253e7d3e1826a54c982dc3439a981`  
		Last Modified: Thu, 29 Oct 2026 20:05:07 GMT  
		Size: 158.4 MB (158409409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba9b84f559dd239e4936b3f3a4e5a86518be52d1ca0a1842be52e64d6686abc`  
		Last Modified: Thu, 29 Oct 2026 20:05:04 GMT  
		Size: 20.1 MB (20132691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6314ba68d712aa752c1fd1966bbd172963d2bb64ca808673c2a8dac990955f21`  
		Last Modified: Thu, 29 Oct 2026 20:05:03 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918c3b3138829d6f572052b2ec1343806435630879a1e73af7850c8058b8aa1c`  
		Last Modified: Thu, 29 Oct 2026 20:05:03 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f1251c877319562c3772c241677a1379f5eb991abe1382dde7808027d71fcba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4857decc555f1dd8eaa816f2089134e438f90f2240dc8ea567c9a44b382f72d3`

```dockerfile
```

-	Layers:
	-	`sha256:f8872418e33e0cc1f54b33cb43cd84ec240cfa598513e800c1cdc6df9b2a0a03`  
		Last Modified: Thu, 29 Oct 2026 20:05:03 GMT  
		Size: 4.3 MB (4290498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6199053b7c0c75eb189cc82126c65fe3286665abe56041ca66f28299374d7abc`  
		Last Modified: Thu, 29 Oct 2026 20:05:03 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:eb187b1104abc8cd8dfa9bb526dfac58f3ca3b0177c906c1611329b7106f3bf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229589686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b81f27248bdd0d43a795f5ffcf6076049307ebbf323456de2b7850fd94e524`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:04:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:10 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:04:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:04:10 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:05:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:05:22 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:05:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:05:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:24 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:658827cda99f7e3c5e71a12232087b657ff7922d33b88f4fd5e279ec53810e40`  
		Last Modified: Thu, 29 Oct 2026 20:05:46 GMT  
		Size: 156.7 MB (156691640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1edc4f8d5e8220e0aa9faf30f91b11c068c365e55a6ec40ec43dbf33af8f3bb`  
		Last Modified: Thu, 29 Oct 2026 20:05:44 GMT  
		Size: 20.0 MB (19977242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d712d5af36ee25524151315347d86182267ac36ec2ab1c9257ffcd9ad31b74`  
		Last Modified: Thu, 29 Oct 2026 20:05:43 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c31941609d2a742046f6dccb738e9fbe762a766b8da26b4d257eb2ad45bd0a`  
		Last Modified: Thu, 29 Oct 2026 20:05:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4dcdfae9c4550bf6a2f3f71195be4a780c7a97ea4710c6a5cfa8b50a603f5dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9326cd47f6390c369bbfbcaea6a16ffd3ca3ed483073cb22a6974a246ac83af5`

```dockerfile
```

-	Layers:
	-	`sha256:8a86d07b309e167061d232fbb3329fc0681828963bc733982d9763de8a29725d`  
		Last Modified: Thu, 29 Oct 2026 20:05:43 GMT  
		Size: 4.3 MB (4290137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ea1d25af195e2de558d68a402ea837136df08434a67c91033519070bf6e42e4`  
		Last Modified: Thu, 29 Oct 2026 20:05:43 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:da2f56893c1bbfdb95545f494a2c07c4a7e17c3b05f0f19c81b09916315ee4ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234812036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca497ed9fcab26e4db280b17132bdec99d0de0b7e0c6059eb8d92e14ab97dc8c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 19:33:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:33:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:33:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:33:02 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 19:33:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 19:33:03 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:36:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 19:36:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 19:36:52 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 19:36:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 19:36:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:36:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:36:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd62d1477bebca3ace751fc4e8b6b753721df1a40d39f3e494d07c626de119f9`  
		Last Modified: Thu, 29 Oct 2026 19:37:39 GMT  
		Size: 157.6 MB (157573286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b309eaace8feb886e6e9df76654aaa30dcb3c107e16ebb79cd1660318171d89`  
		Last Modified: Thu, 29 Oct 2026 19:37:35 GMT  
		Size: 20.4 MB (20356804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d775c64b56f2c7987fc6e6eb7fb2708d9fdad2454e5726e3293a72e8ac69962`  
		Last Modified: Thu, 29 Oct 2026 19:37:35 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6d4d294030b7271375c441ac0674663ede9e881c98d04bb72c36649a81c560`  
		Last Modified: Thu, 29 Oct 2026 19:37:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:44baa0b54293b910f131eca96e7faf5fb0991fc30e9438ba3b4dbfd16d45dc40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95f4c98b5139386bfedbee210aa42f0319eee02045fb93c6e18c79686fbda2b`

```dockerfile
```

-	Layers:
	-	`sha256:0be46cf3099f82562f89e384013e197e4d2a1117a913301e3193633d2583532a`  
		Last Modified: Thu, 29 Oct 2026 19:37:35 GMT  
		Size: 4.3 MB (4291125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:323cf203affb8c34da7434cc0e5b0f1d95f61a8706f2fa4bd4576092f2a2eab2`  
		Last Modified: Thu, 29 Oct 2026 19:37:34 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
