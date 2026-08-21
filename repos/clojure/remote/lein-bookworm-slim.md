## `clojure:lein-bookworm-slim`

```console
$ docker pull clojure@sha256:2e1e79e4c7da7c57a9c11adc91c6ec8eeac8cb7ec7e548e843f8df1202227ad2
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

### `clojure:lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b323808f622cee51e39b9d67b09aebf26fb58fea8655ced4bd217ce2694ca12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143436485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b780bddc901cbde9d3eefa5be27b6adf9460bb63216af98353a6cef75fc84fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:19:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:19:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:19:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:19:26 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:19:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:19:26 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:20:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:20:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:20:38 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:20:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:20:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:20:40 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:20:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0502bb40af118a5b61137d989b1f1ebd76d695ae6b8a23c5c79ee3d266dfece`  
		Last Modified: Fri, 21 Aug 2026 19:21:00 GMT  
		Size: 92.6 MB (92615080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3777cafc717198c3a44130ba3e354d9b97320450dbec9b0b6d260194d7ceb9e`  
		Last Modified: Fri, 21 Aug 2026 19:20:58 GMT  
		Size: 18.1 MB (18073151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8738e450b70046b283bebbcd2f73e07f47ef213b287b69e53bb13c212bd0e27`  
		Last Modified: Fri, 21 Aug 2026 19:20:58 GMT  
		Size: 4.5 MB (4515236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36680d76907da68deb1075a2a3df4a61fba2100adffe940dff2528e51c70ade2`  
		Last Modified: Fri, 21 Aug 2026 19:20:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d5c039721fa3c7fd37b5a691f6bcdd976621bb6bf642d0e38617af9fa1387756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2724060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a6362a38a4f1249ecbd7568d85f66bd545d4821402a1bee13b297e4c51879f`

```dockerfile
```

-	Layers:
	-	`sha256:7fe2f253541d7d389740f44f0ea295079a4175f70114eb2d5d673337b5f0c635`  
		Last Modified: Fri, 21 Aug 2026 19:20:57 GMT  
		Size: 2.7 MB (2705632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67d9c585fc620d58f827cfc1053c0a762355e9cc39e29c4de7c55d58f095f548`  
		Last Modified: Fri, 21 Aug 2026 19:20:57 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bc4677f0b040853503f63b7208f113732f6ef02723a6b6a9ce198ffe38c46193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142071636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d43eaee832b495c6bdbbc74c4022d00c3a18924a78b593a37d21d34d54854d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:08:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:00 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:08:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:08:00 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:09:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:09:12 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:09:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:09:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52e8acbbe00bb8aabcc1cb3901dccb3be240c20aaaf0cd38ad18d494db5fe32`  
		Last Modified: Fri, 21 Aug 2026 19:09:33 GMT  
		Size: 91.5 MB (91532188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f49e28472d98556403fb19b3ddc452be78130e21edf5967c5a1b82693077bb`  
		Last Modified: Fri, 21 Aug 2026 19:09:32 GMT  
		Size: 17.9 MB (17906609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e21e8d5f3a4641ab85ba5f7e0fd82121ff522c09c1fe62287687b2c01652502`  
		Last Modified: Fri, 21 Aug 2026 19:09:31 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a117c60d7cc86e40c4dbeac81243263009a101a24ed5912bd780c6fc4c0cb220`  
		Last Modified: Fri, 21 Aug 2026 19:09:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6c081457eeda23203f0e22fe1173a96e29ba101906d1dac76d690b7420c6292a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2723841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a80dd59dadc9c99b659b962b1d45f5f171e0524bc3247a4ca100ca226c56600`

```dockerfile
```

-	Layers:
	-	`sha256:7f896812b79c11af84cde16ad391aa9e8aa31fabd56508a09a3e285b72c052fa`  
		Last Modified: Fri, 21 Aug 2026 19:09:31 GMT  
		Size: 2.7 MB (2705268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaf857e17536a0e1890f11b904908f3360858e54ab6a62612b797df6a6252963`  
		Last Modified: Fri, 21 Aug 2026 19:09:31 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6849b161828773069930fd3523d9034cf462d1cc0c849cdf9ed24cf5ce5c985f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146785095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e8b110f3b7cc5a1b3d40c27e23905c51fa909ab1ccd029ceea542e6bd00235`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:30:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:30:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:30:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:30:04 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:30:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:30:05 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:32:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:32:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:32:51 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:32:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:32:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:32:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:32:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75110ab10d2ed791e257ccc400d7c6d0df222aece9a98ecea62272d5d67edb1d`  
		Last Modified: Thu, 20 Aug 2026 01:33:36 GMT  
		Size: 91.9 MB (91914014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330db1d87a87bed2248c75b4fb92e8534f2924a09a4a76dde44c696037720753`  
		Last Modified: Thu, 20 Aug 2026 01:33:34 GMT  
		Size: 18.3 MB (18279112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde9781e8aaf8c343bb74c079dbeadde97ccb9a7ac1fdcc563c65cb8d2785469`  
		Last Modified: Thu, 20 Aug 2026 01:33:33 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a81edac0df2ec55fd2ff84231a2e569e1adae5f6afe981ddfd5001eecfed8d`  
		Last Modified: Thu, 20 Aug 2026 01:33:33 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:50e7ce6a98eadedb09384b8167daf523aad1dc1369db0d78ff9bdf498f4e899d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2709273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6659e75199c530ed30d6c0cf4c8c6bc85646121df282c4e2244ebd5964b721f6`

```dockerfile
```

-	Layers:
	-	`sha256:6f5dc3cbbc5dd72b36fcdeea69e303a05f4254d9f5ea0eb66e60ac429bb621bd`  
		Last Modified: Thu, 20 Aug 2026 01:33:33 GMT  
		Size: 2.7 MB (2690789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d671e3e7f3d9c39aab6cff32ca411f04506e4832800e5b23c36e8b199e11a760`  
		Last Modified: Thu, 20 Aug 2026 01:33:33 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:0b9c4a1481d266f5ac2d317318f1c94ecf1ffcc9c8d886191336e9db5b40001d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137549028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d7a01d2b6614f14cb834115f7c137d75a1e7f4d23930fffa93b7f72e032b48`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:02:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:02:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:02:41 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:02:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:02:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:02:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:02:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fa19c102198e4a4f9740d34bb6654fddf34ef5fe7ebb7eff209539a43bbf66`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 88.4 MB (88420368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b014273c8a26e1b2e8dc8b06f2f384e93654795408d41cf1438dfacf76c148`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 17.7 MB (17724739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb535136e15de24ee9ac140907e414a8cab2c339de1883620fa31de27643461b`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fef8f0b77dd2711f03f22f8bf29948d829312655c8132e0bfb60c400e6a9233`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:72f560720b85a5cdf899b561f1afff7fc2d91b44fbb856a5cf4952d50c7fa5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2695233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2441cd23f44af67eca126669be703afc1eafa05f2135e80faeba2147cc8c39b3`

```dockerfile
```

-	Layers:
	-	`sha256:0ef63fc7b7e75cc5093b927894e56631add80dc812fffe14df0e7e9776dc17cd`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 2.7 MB (2676805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:119e77373a2933cbe01b612c651d1eb8b3e26066129c5ef3e49f04e2b1af4177`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json
