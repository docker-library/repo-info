## `clojure:temurin-25-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:0f78f6f4669988cade6ba76b2aa016fc4bb063d5e92da8a458ef2c1d0a1048f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e7e4fb9fa07ef6d14aea1770f7ee96b3701ea50b0a7b5fdc7a35f0a16a80d08f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142981748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996ff51601d4b4beeac64a4c0eeacf587096852bd7d7a66c3a95c850b2cda883`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:34:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:34:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:34:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:34:46 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:34:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:34:46 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:35:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:35:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:35:52 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:35:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:35:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:35:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:35:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ccc88840ebd990b99276f53ae255df1c5e3b7f8521962de8d741c21a7254de9`  
		Last Modified: Thu, 16 Jul 2026 01:36:12 GMT  
		Size: 92.6 MB (92574583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bba60f8648f92be7a3797f606e66a17b009a1706e7071fe56089af77d1a1dd3`  
		Last Modified: Thu, 16 Jul 2026 01:36:10 GMT  
		Size: 15.6 MB (15631777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0bd71a84ea508d87a9eb2c92f1fc1e57d5ca1fd80843ea76883c564c1482984`  
		Last Modified: Thu, 16 Jul 2026 01:36:10 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ce94ddde3503e6d387d4020046b167343739813144fd460b77dd6ee077e23a`  
		Last Modified: Thu, 16 Jul 2026 01:36:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:015202c959592808f71f1d7fa8c5609b1f37419c4a7e9a7b2e7adf2a7ba89175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698fbc20b25df2f7b25fc51b8383a9980b26ed10d79d4adc35db9ee119ff4915`

```dockerfile
```

-	Layers:
	-	`sha256:b906320ff483c898b23899bc59ea3778b940d3b645a143afd0a77af90e633f84`  
		Last Modified: Thu, 16 Jul 2026 01:36:10 GMT  
		Size: 3.0 MB (3005168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecdb6131ba380dbc4d397b2657b12fc8ee7f83dc6ef475939a52a1db189093c8`  
		Last Modified: Thu, 16 Jul 2026 01:36:10 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:099162105c13bcc52e14e9990d07d3b19781e6932d2fdb08c345f053ce2225b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140439151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5012fcee756c2178783fc8d69300a7e46344a45dd8c8bcb40bf57c75182fccba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:30:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:28 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:30:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:30:28 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:31:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:31:39 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:31:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:31:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:41 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dace108b1330ea341885aaeb6cfb01651729a4e2e02ea1b45341836839451c6`  
		Last Modified: Thu, 16 Jul 2026 01:31:58 GMT  
		Size: 91.5 MB (91542298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66b3d5ad750b7f77d8fe0bef94925c299b8c8626207862abd61eb9c76abef99`  
		Last Modified: Thu, 16 Jul 2026 01:31:57 GMT  
		Size: 15.6 MB (15632262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9dd0e5a9eb21d97665978a3798c791c481b44fae1843b43df187efd9656e549`  
		Last Modified: Thu, 16 Jul 2026 01:31:56 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fef9c92344f4661df4c19a6af9acb7d1a883db586b9423474dcd1dbe035eda`  
		Last Modified: Thu, 16 Jul 2026 01:31:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aae4058b2b429f94626a9e78d370725c6c003113d3e2e61b6a405f7ea9390d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60973b7ca28690de4bdbf669e3fce9d5694fc6f974f201213a5ed7f5c768028`

```dockerfile
```

-	Layers:
	-	`sha256:127f40de1e6d2d7c671e48a4ef59abc007e423946a02ababf26151331de33e3c`  
		Last Modified: Thu, 16 Jul 2026 01:31:56 GMT  
		Size: 3.0 MB (3004798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa22b7d52a4d1caf7248533079f48af749c030d00c4f4cc0b57415f656456d98`  
		Last Modified: Thu, 16 Jul 2026 01:31:56 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json
