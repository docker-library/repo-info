## `clojure:temurin-21-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:99636c48fe24ab35ea03e8708639296656da9297a3441bade3b07c35190ad774
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
$ docker pull clojure@sha256:669faf0d89194597a3a0e068ae5fefd5d0ce0e7e5ca2ace3efa61b1a9e3b0f01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231283809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76bf821f4b7ddb41cc2bd4b0d4ee65b37a043301aa76fcfe7cee174f81f5e564`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:22:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:22:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:22:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:22:34 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:22:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:22:34 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:23:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:23:47 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:23:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:23:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:49 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3878703f5a436b9288376509b24cfe3ee1533c18ae44dfe86c57be49a3caffb6`  
		Last Modified: Fri, 25 Sep 2026 23:24:10 GMT  
		Size: 158.1 MB (158117462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10956b9e4c5e935e8730c55e7d48e2302d17edde398112445a0d22a557dbdca8`  
		Last Modified: Fri, 25 Sep 2026 23:24:08 GMT  
		Size: 20.1 MB (20147263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e02c36aaf395ae30e441e28739b372dd3f5521d6decc51e945debcdf2f03550`  
		Last Modified: Fri, 25 Sep 2026 23:24:07 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5aaf41637f5f63308f6254c764da81ab438570654ddb7ec84af77b6946935ac`  
		Last Modified: Fri, 25 Sep 2026 23:24:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:76707f3782890bee6469b71610f6c30ffa527fc075787a4d5f60cd71da0f1216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476ebf312da6a427e432d9849edd8001b74e9ed4684723e4868ce29e23e0ca45`

```dockerfile
```

-	Layers:
	-	`sha256:e4500af5838f7f842b6d6e5f663e2d99ade1b3f815012b8cdbfeac6ffe71af9d`  
		Last Modified: Fri, 25 Sep 2026 23:24:07 GMT  
		Size: 4.3 MB (4291801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdadb9a34a10dbe2507146263970b198b605bb771323061235df7c04ce598f55`  
		Last Modified: Fri, 25 Sep 2026 23:24:07 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:90179e987b72eb463433440969a4f044c724856e1329e9bf2140c3b702031353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229273268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c35f5aa65a1db9089fa1bd30b98e48921c1741b5294e01d059cb10e0dc503e4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:20:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:20:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:20:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:20:06 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:20:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:20:06 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:21:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:21:13 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:21:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:21:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:15 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9cfa23780722a7e4258b1cbc482547cb0b26ca79d64116dcf7e73b8de3173d`  
		Last Modified: Fri, 25 Sep 2026 23:21:37 GMT  
		Size: 156.4 MB (156400634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8396973c14eb0663e74e6f008b0c57b31c84c0f7430f73618e01979ffe7e7a14`  
		Last Modified: Fri, 25 Sep 2026 23:21:35 GMT  
		Size: 20.0 MB (19967089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a466868ec1bedc29eb11e2e5c8a14b4666400fcecac7513254edcb7f33a8ee24`  
		Last Modified: Fri, 25 Sep 2026 23:21:34 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41ac98b91290302705a0b97ef310a0eaa70150fa88305579fbf5388c556b647`  
		Last Modified: Fri, 25 Sep 2026 23:21:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f6340707c32effd7c4f1780850b292146da18b721be493b50c08406a709cfb90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f496f53d5e10c8fb663033cc62091939142545e5661e1184eb5182c6af331c`

```dockerfile
```

-	Layers:
	-	`sha256:3d48804ddfe9b778a35c11995e9d83f25ba26b33b06b6074ed3e0c4127f5e2d0`  
		Last Modified: Fri, 25 Sep 2026 23:21:34 GMT  
		Size: 4.3 MB (4291440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f46b2464360f85f330a793555022fc7268895ab602a0f214d435a31bd839ad2a`  
		Last Modified: Fri, 25 Sep 2026 23:21:34 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:0bb8a23674fac17f429ee19d3bb89c32a7567187536638b7084107a0fc3de089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235505576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a5a88c0bf749d7f0e717d9ad03cfc36162064f5762dfff18ea61e44a52b1ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:50:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:50:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:50:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:50:57 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 04:50:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 04:50:57 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:53:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 04:53:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 04:53:09 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 04:53:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 04:53:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:53:13 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:53:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb6bf326805d33db5f2eeb52843cedf33600a8cff5a57e18937a394c05f6f08`  
		Last Modified: Sat, 26 Sep 2026 04:53:55 GMT  
		Size: 158.3 MB (158282667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d0e39a42c4dd0bc6687bb507cce15e9a5ef893c21c9563f90eddc01e13f7fc`  
		Last Modified: Sat, 26 Sep 2026 04:53:52 GMT  
		Size: 20.4 MB (20357938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b135a3f5b912cff2a668e5f42610c39189e1aa63746d633250442ecca74a0d`  
		Last Modified: Sat, 26 Sep 2026 04:53:52 GMT  
		Size: 4.5 MB (4515236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43fe53a34b94bb26ad8c750e163b546e772d0137e2691ae4e988de2fc56d9874`  
		Last Modified: Sat, 26 Sep 2026 04:53:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:03604f667bf9f0d20f3d7ea395e8d0ed003b690b99e5f579188a00691bf517cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b97e39beeb0849e268d8529edc2d893ce72b3bbae12b6b392993339fd7e0ffc`

```dockerfile
```

-	Layers:
	-	`sha256:873088b2a5be8010194076edae41fc7a2ab83d784c173c037b0d45532a6b1867`  
		Last Modified: Sat, 26 Sep 2026 04:53:52 GMT  
		Size: 4.3 MB (4293674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eba36e95ba162696dd7beb42d965e5476ffdbc626470268bcc7132a8e72d3d04`  
		Last Modified: Sat, 26 Sep 2026 04:53:51 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
