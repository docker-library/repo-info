## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:0e5289a3bc3b8d9679b311a492488152bb68b410fe5bace0a2491e544f93610f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:b351dcb5abc5db27ea1ce04f392e2c001f79c936ec18ebbd47861526d01c4c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219007776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa1fdf4cadd337a9310267b02da970b4403f882f1c7dea9ac30a7c2d2d4f2b7`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:44:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:44:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:44:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:44:55 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:44:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:44:55 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:46:03 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:46:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:46:03 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:46:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:46:04 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9b56ce7c487ec3afb5e5e2858bb570258f49503fe2cd23cab5dd720714c978`  
		Last Modified: Wed, 09 Sep 2026 03:46:25 GMT  
		Size: 145.9 MB (145861365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e20c7107f21e084e44236da3bf6f4af4b01ba4f153d3caf4378cb841a2f61d4`  
		Last Modified: Wed, 09 Sep 2026 03:46:22 GMT  
		Size: 20.1 MB (20133814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e135ed43a0a83211e464aecfc1e86e598d24b08a5732b37897ef2e88b74e3b11`  
		Last Modified: Wed, 09 Sep 2026 03:46:21 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ad8e62acdb95ad7e3156149cf36fae5b934da5aa34f802cb87569c69b961acc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b93c4394cf8c315c9937a795500d6a506749c2e985454fc5bfe7d265cb3436a`

```dockerfile
```

-	Layers:
	-	`sha256:556ee0e25cf37339ca195d4e40b32568619599ab2106cd7dd3feca981d7a6f68`  
		Last Modified: Wed, 09 Sep 2026 03:46:21 GMT  
		Size: 4.3 MB (4308771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27336001731a4f5bfce1db607f11c4c1f2c0481d832702202aa8a4d872196434`  
		Last Modified: Wed, 09 Sep 2026 03:46:21 GMT  
		Size: 15.7 KB (15747 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b095f39c2f8512ab2d4a595ee4fc30a50dc41d3149f303467238cd97674b214e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215422068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d75cf311bb3ac66fa07e5b78563038812f60cd41471ac3ca72e04831fada8ba9`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:55:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:55:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:55:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:55:31 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:55:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:55:31 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:56:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:56:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:56:46 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:56:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:56:48 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb70b3001ffe40181d5aca081a0704b19cb034c3554fbefe158c2af5aab487ac`  
		Last Modified: Wed, 09 Sep 2026 03:57:09 GMT  
		Size: 142.6 MB (142566249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96886a0186394cc9e2a1a187d64e20a176378b650f95fe10c09545b7a05c25de`  
		Last Modified: Wed, 09 Sep 2026 03:57:07 GMT  
		Size: 20.0 MB (19956903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1b6db1ae08ae01b4f3d9cdb00d647453e527dc6f53627285dae95da60e2f49`  
		Last Modified: Wed, 09 Sep 2026 03:57:06 GMT  
		Size: 4.5 MB (4515235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:42ee1dff6be8801829e3497cb15bca5fb208743d0bc88fe9e5a5fc8fb133ca9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8c3744ac798dc31a16799c5acb194bf8c3a747e08a6e169f5449a487d08406`

```dockerfile
```

-	Layers:
	-	`sha256:94e3e26ff98154bce4bb885e872b103986251549c88879a87187d380f5f21155`  
		Last Modified: Wed, 09 Sep 2026 03:57:06 GMT  
		Size: 4.3 MB (4309004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:160d4c0d0f0b003c2f8ecaee82a52c02f196a4d2aa47b56bb9125195320cd8dc`  
		Last Modified: Wed, 09 Sep 2026 03:57:06 GMT  
		Size: 15.9 KB (15867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:91f6fe249325160577a4080c0bb62b978857849bb90dec42b6b1a86527b80486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210294718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee75247c02cb326fce7f9868844c323d3dd72dd8700fa212e428a20df6f13f77`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:30:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:30:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:30:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:30:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 10:30:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 10:30:51 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:34:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 10:34:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 10:34:15 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 10:34:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 10:34:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79be30d1182f5736f59f68f224dc46e7cf7d74015106e0ec2522471018a6216d`  
		Last Modified: Wed, 09 Sep 2026 10:34:55 GMT  
		Size: 133.1 MB (133089491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eee8a31159ae32dd0bbea19268d6e2d91202b7baed71d0e15a87c99491faba0`  
		Last Modified: Wed, 09 Sep 2026 10:34:51 GMT  
		Size: 20.3 MB (20348201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8e5a626da31e10c3cf0d5d90e16d242cb81511bd240994e4acaf6bbb1dfc5c`  
		Last Modified: Wed, 09 Sep 2026 10:34:50 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6b7e0478010328420f71db5fc869509bb585cfab55768c24bde0dc08e7754612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb3eb3ae726c0e7519255a4ab9d235d8917e73607ab9b6fa6d86e7002ab2174`

```dockerfile
```

-	Layers:
	-	`sha256:557948b1503a3b35d1e27f69327ca554d7823a4b23a90aa5dd0f2046ab615bb1`  
		Last Modified: Wed, 09 Sep 2026 10:34:50 GMT  
		Size: 4.3 MB (4310017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fbfdb32a69702c3dc585f3bad970c0a070b6ecb5871e31ab4a7be286cb12dc6`  
		Last Modified: Wed, 09 Sep 2026 10:34:50 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json
