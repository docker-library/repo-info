## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:1cf704ed166bdc8e167196be37cd7651258cda133e78723e4255db4c34ab6d62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1bd8a35aa1302a12848430972a0865aa23b5e2e9431c2640d51fb2de2a9ac159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209218216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9872a0a2f03c5271485e3933e6516a0f2e7477be2c34bb2ab7abe268d2828dea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:28:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:28:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:28:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:28:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:28:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:49:50 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:51:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:51:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:51:07 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:51:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:51:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:51:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:51:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c327380ba9be49ba4c1bd2de4d1b17997c49c4ec3b707204aec76115947a2cc`  
		Last Modified: Tue, 27 Oct 2026 00:29:07 GMT  
		Size: 158.1 MB (158117472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8794884a7e7ead99af94e998473f1245f748fc1046326e6a8ab1e1f391f691a1`  
		Last Modified: Tue, 27 Oct 2026 00:51:19 GMT  
		Size: 16.7 MB (16741553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba13c22c4a657f8dcd8551f315c38dc9cb57b9c5f9e108ea978fc06791bc8e0`  
		Last Modified: Tue, 27 Oct 2026 00:51:19 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39901e7a53aa8f119dae2524a2592004d465b6738dfb0217a20bea138569074`  
		Last Modified: Tue, 27 Oct 2026 00:51:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5d7f133f01f86456fd6eb53406f663aa1903a91cab929e11aa6e673667139fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a889ff24e53c749e5770b1bd726a264f583a7fece72c8d5e266d6f5b5ae3c215`

```dockerfile
```

-	Layers:
	-	`sha256:356e9dcd99717180209d951ff8afda2eb1a55460b27d8074924d4641fee479d0`  
		Last Modified: Tue, 27 Oct 2026 00:51:19 GMT  
		Size: 2.4 MB (2373606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26ab76ed4f239ae4bf264955f893fb4861f9c000f284cabec4357c6c8f7fa244`  
		Last Modified: Tue, 27 Oct 2026 00:51:19 GMT  
		Size: 16.8 KB (16797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

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

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

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
