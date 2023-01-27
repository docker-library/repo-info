## `julia:rc-alpine3.17`

```console
$ docker pull julia@sha256:7aa9cd5d54a56c36a94a1687f8acf25c9f444af7c645fb821d13e7af84d33c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `julia:rc-alpine3.17` - linux; amd64

```console
$ docker pull julia@sha256:f5096a8cc66fbce639cc1bc8bb98b492c9e19d6aaf3bfef8b2abacaee596758a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152394438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8571f2a87517449b37e14efd3403f26f657f8fb9bfeeb172735178ade12604`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:28:28 GMT
ENV JULIA_PATH=/usr/local/julia
# Mon, 09 Jan 2023 18:28:28 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 18:28:29 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 20 Jan 2023 01:56:11 GMT
ENV JULIA_VERSION=1.9.0-beta3
# Fri, 20 Jan 2023 01:56:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			url='https://julialang-s3.julialang.org/bin/musl/x64/1.9/julia-1.9.0-beta3-musl-x86_64.tar.gz'; 			sha256='4b17b3804b9b2553b682781e63268bfc641db18ea07eb078a79b6fedfa9d6a5b'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		wget -O julia.tar.gz.asc "$url.asc"; 	wget -O julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum -w -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apk del --no-network .fetch-deps; 		julia --version
# Fri, 20 Jan 2023 01:56:31 GMT
COPY file:92a2f9b3b9de38e57462f85dbe804b0eae9fea8a95aa9bfe9d3c2b95000ae42c in /usr/local/bin/ 
# Fri, 20 Jan 2023 01:56:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Jan 2023 01:56:31 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e63cb8f09c1c5cb9589840f5d669b304c59621b3d79f58a652a0fd357c09fa`  
		Last Modified: Fri, 20 Jan 2023 02:00:14 GMT  
		Size: 149.0 MB (149023437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c96d1d35f7faa41d69924fd5f7cf119249d0c61f0d8c6f508ed934b7bb3267b`  
		Last Modified: Fri, 20 Jan 2023 01:59:50 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
